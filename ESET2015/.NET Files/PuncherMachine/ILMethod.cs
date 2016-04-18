//IL Definition
.args (
	[0] System.String
)

.locals init (
	[0] ulong,
	[1] int,
	[2] ulong,
	[3] bool
)

IL_00000: nop
IL_00010: ldc.i8 3074457345618258791L
IL_000a0: stloc.0
IL_000b0: ldc.i4.0
IL_000c0: stloc.1
IL_000d0: br.s label
IL_000d9: label_2
IL_000f0: nop
IL_00100: ldloc.0
IL_00110: ldarg.0
IL_00120: ldloc.1
IL_00130: callvirt String.getChars()
IL_00180: conv.u8
IL_00190: add
IL_001a0: stloc.0
IL_001B0: ldloc.0
IL_001c0: ldc.i8 3074457345618258799L
IL_00250: mul
IL_00260: stloc.0
IL_00270: nop
IL_00280: ldloc.1
IL_00290: ldc.i4.1
IL_002a0: add
IL_002b0: stloc.1
IL_002b9: label
IL_002c0: ldloc.1
IL_002d0: ldarg.0
IL_002e0: callvirt String.getLength()
IL_00330: clt
IL_00350: stloc.3
IL_00360: ldloc.3
IL_00370: brtrue.s label_2
IL_00390: ldloc.0
IL_003a0: stloc.2
IL_003b0: br.s label_3
IL_003c9: label_3
IL_003d0: ldloc.2
IL_003e0: ret