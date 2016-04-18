//IL Definition
.args (
)

.locals init (
	[0] uint32,
	[1] uint32,
	[2] uint32,
	[3] uint32,
	[4] uint32,
	[5] uint32,
	[6] uint8[],
	[7] uint32,
	[8] bool,
	[9] bool
)

IL_0000: nop
IL_0001: ldc.i4 57005
IL_0006: stloc.0
IL_0007: ldc.i4 48879
IL_000c: stloc.1
IL_000d: ldc.i4 51966
IL_0012: stloc.2
IL_0013: ldc.i4 47806
IL_0018: stloc.3
IL_0019: ldc.i4 64206
IL_001e: stloc.s 4
IL_0020: ldloc.0
IL_0021: ldloc.1
IL_0022: mul
IL_0023: ldloc.2
IL_0024: ldloc.3
IL_0025: add
IL_0026: xor
IL_0027: ldloc.s 4
IL_0029: xor
IL_002a: ldc.i4 -229612108
IL_002f: xor
IL_0030: stloc.s 5
IL_0032: call class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
IL_0037: ldstr "ESET"
IL_003c: callvirt instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
IL_0041: stloc.s 6
IL_0043: ldloc.s 6
IL_0045: ldc.i4.0
IL_0046: call uint32 [mscorlib]System.BitConverter::ToUInt32(uint8[], int32)
IL_004b: stloc.s 7
IL_004d: ldloc.s 7
IL_004f: ldloc.s 5
IL_0051: ceq
IL_0053: ldc.i4.0
IL_0054: ceq
IL_0056: stloc.s 9
IL_0058: ldloc.s 9
IL_005a: brtrue.s IL_0061
IL_005c: ldc.i4.1
IL_005d: stloc.s 8
IL_005f: br.s IL_0066
IL_0061: ldc.i4.0
IL_0062: stloc.s 8
IL_0064: br.s IL_0066
IL_0066: ldloc.s 8
IL_0068: ret