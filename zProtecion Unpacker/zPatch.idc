#include <idc.idc>

static DisableAntiDebug(EP) {
	auto cmd;
	do {
		if(Dword(EP) == 0x0) {
			Message("[?] AntiDebug not found\n");
			return;
		}
		EP = EP + 4;
	} while(!(GetMnem(EP) == "MOV" && GetOperandValue(EP, 1) == 0x1A));
	if(GetMnem(EP) == "SVC" && GetOperandValue(EP, 0) == 0x0) {
		PatchDword(EP, 0xE1A00000);
		ExportELF(EP);
		Message("[+] AntiDebug disabled (offset: 0x%08x)!\n", EP);
		return EP; //return anti-debug address SVC 0
	} else {
		DisableAntiDebug(EP);
	}
}

static SearchKey(EP) {
	auto key_addr;
	auto key = 0;
	do {
		if(GetMnem(EP) == "LDR" && GetOpType(EP, 0) == 0x1 && GetOpType(EP, 1) == 0x2) {
			key_addr = GetOperandValue(EP, 1);
			if(Dword(key_addr)&0xFFFF0000 != 0xFFFF000) {
				key = Dword(key_addr);
				return key;
			}
		}
		EP = EP + 4;
	} while(key == 0);
	return;
}

static ExportELF(EP) {
	auto name_read = AskFile(0, "*.*", "Select the original binary...");
	auto name_write = AskFile(1, "*.*", "Save the patched program...");
	auto hWrite = fopen(name_write, "wb");
	auto hRead = fopen(name_read, "r");
	if(hWrite == 0 || hRead == 0) {
		Fault("Impossible to open the file, abort!");
	}
	auto len = filelength(hRead);
	Message("Size: %d bytes\n", len);
	savefile(hWrite, 0x0, 0x0, len);
	auto seg_base = GetSegmentAttr(EP, SEGATTR_START);
	auto offset = seg_base - 0x1000; //automate this: linearAddress --> fileOffset
	savefile(hWrite, offset, seg_base, len - offset);
	fclose(hWrite);
	fclose(hRead);
}

static SetupDebug(EP) {
	Message("[+] Starting debug...\n");
	//save the instruction at EP
	auto orig_ep = Dword(EP);
	Message("[+] Instruction at EP (bytes form): 0x%08x\n", orig_ep);
	//The next line puts a BKPT on routine start to stop execution under the debug
	PatchDword(EP, 0xE1200070);
	Message("[+] Saved the original instruction at Entry Point, replaced with BKPT 0x0\n");
	ExportELF(EP);
	Warning("Connect the device with USB cable, execute \"adb forward tcp:23946 tcp:23946\", push the patched %s (just saved) and zLoader to /data/local/tmp and give them chmod 777", GetInputFile());
	Warning("Load zLoader in IDA and execute the second script zDebug.idc :)");
	Warning("Save all the information displayed on the Output window on a notepad file!");
}

static main() {
	Message("zPacker Unpacker Alpha\n");
	Warning("Use \"readelf.exe -a %s\" and read the address of INIT_ARRAY, then enter it into the next box!", GetInputFile());
	auto INIT_ARRAY = AskAddr(BADADDR, "Enter the INIT_ARRAY address (e.g. 0xDEADBABE)");
	auto EP = Dword(INIT_ARRAY);
	Message("[+] Decryption routine (_contructor) at offset: 0x%08x\n", EP);
	if(EP != BADADDR) {
		DisableAntiDebug(EP);
		auto key = SearchKey(EP);
		Message("[+] Decryption Key: 0x%08x\n", key);
		SetupDebug(EP);
	}
}