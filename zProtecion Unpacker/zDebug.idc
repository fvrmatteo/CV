#include <idc.idc>

static decrypt1(from, size, key) {
	size = size >> 2;
	auto i = 0;
	for(i = 0; i < size; i = i + 1) {
		auto x = Dword(from);
		x = x^key;
		key = rotate_dword(key, 1);
		key = key + 1;
		PatchDword(from, x);
		from = from + 4;
	}
  return from;
}

static decrypt2(from, key) {
	auto x = Byte(from);
	x = x^key;
	x = x&0xFF;
	PatchByte(from, x);
	do {
		from = from + 1;
		key = rotate_dword(key, 1);
		key = key + 1;
		x = Byte(from);
		x = x^key;
		x = x&0xFF;
		PatchByte(from, x);
	} while(x != 0x0);
  return from;
}

static InfoRegisters() {
	if(R2 == 0x2) {
		Message("\n[*] Decrypting a string:\n");
	} else {
		Message("\n[*] Decrypting a function (or a table):\n");
	}
	Message(" R0 = 0x%08x\n R1 = 0x%08x\n R2 = 0x%08x\n", R0, R1, R2);
}

static SetBreakpoint(PC) {
	auto addr = PC;
	auto i;
	for(i = 0; i < 4; i++) {
		addr = FindBinary(addr, SEARCH_DOWN, "?? 00 00 EB");
		AddBpt(addr);
		addr = addr + 4;
	}
	addr = FindBinary(addr, SEARCH_DOWN, "?? FF 2F E1");
	AddBpt(addr);
}

static PatchOriginal(lib_name, offset, size, key) {
	auto hFile = fopen("patch.bat", "w");
	fprintf(hFile, "start patch.exe %x %x %x %s %s", offset, size, key, substr(lib_name, 2, -1), "unpacked.so");
	fclose(hFile);
	Exec("patch.bat");
	Warning("PATCHED!");
}

static Debug(lib_name) {
	auto module_base = GetEventModuleBase();
	Message("[+] Module Base: 0x%08x\n", module_base);
	do {
		GetDebuggerEvent(WFNE_SUSP|WFNE_CONT, -1);
		if(PC == FindBinary(PC, SEARCH_DOWN, "?? FF 2F E1")) {
			break;
		}
		InfoRegisters();
		if(R2 == 0x2) {
			PatchOriginal(lib_name, /*(R0 - module_base < 0x1000) ?*/ R0 - module_base /*: R0 - module_base - 0x1000*/, 0x0, R1);
		} else {
			PatchOriginal(lib_name, /*(R0 - module_base < 0x1000) ?*/ R0 - module_base /*: R0 - module_base - 0x1000*/, R1, R2);
		}
	} while(1);
	Message("\n[+] Debug finished, you can see all the calls to decrypt1 & decrypt2 with arguments\n");
}

static main() {
	Exec("adb forward tcp:23946 tcp:23946");
	SetRemoteDebugger("localhost", "", 23946);
	auto lib_name = AskStr("", "Insert the name of the encrypted library");
	StartDebugger("/data/local/tmp/zLoader", lib_name, "/data/local/tmp/");
	auto orig_bytes = AskAddr(0xE1200070, "Insert the original bytes");
	GetDebuggerEvent(WFNE_SUSP, 5000);
	Message("[+] Original bytes: 0x%08x\n", orig_bytes);
	PatchDword(PC, orig_bytes);
	Message("[+] BKPT reached at address, changed with original instruction: 0x%08x\n", PC);
	Warning("In the next box select \"Change exception definition\" and deselect \"Suspend program\", then click \"No (discard)\"");
	//Start the debug process
	SetBreakpoint(PC);
	auto hFile = fopen("copy.bat", "w");
	fprintf(hFile, "copy %s %s", substr(lib_name, 2, -1), "unpacked.so");
	fclose(hFile);
	Exec("copy.bat");
	Debug(lib_name);
	/* To be implemented: decrypt_contructor that calls decrypt1 & decrypt2 */
}