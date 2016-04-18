using IlEmitHelp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Reflection.Emit;
using System.IO;
using System.Threading;

namespace DynMethod
{
    public static class DynMethodFactory
    {
        public delegate TReturn OneParameter<TReturn, TParameter0>(TParameter0 p0);

        public static DynamicMethod createMethod(uint[] instructionHashes)
        {
            OpCode[] array = (from x in typeof(OpCodes).GetFields(BindingFlags.Static | BindingFlags.Public)
                              where x.FieldType == typeof(OpCode)
                              select (OpCode)x.GetValue(null) into x
                              where !x.Name.Equals("break")
                              select x).ToArray<OpCode>();
            DynMethodFactory.OneParameter<uint, string> oneParameter = DynMethodFactory.create_HashMethodForOpcodes();
            Hashtable hashtable = new Hashtable();
            OpCode[] array2 = array;
            for (int i = 0; i < array2.Length; i++)
            {
                OpCode opCode = array2[i];
                hashtable.Add(oneParameter(opCode.Name), opCode);
            }
            /* debug */
            /*List<string> list = new List<string>();
            foreach (DictionaryEntry e in hashtable)
            {
                list.Add(Convert.ToString(Convert.ToUInt32(e.Key), 16));
                if (e.Value.ToString().Equals("mul.ovf.un"))
                {
                    Console.WriteLine("Key: " + Convert.ToString(Convert.ToUInt32(e.Key), 16) + " OpCode: " + e.Value);
                }
            }
            File.WriteAllLines("test.txt", list.ToArray());*/
            /* debug */
            Type[] parameterTypes = new Type[]
			{
				typeof(string)
			};
            DynamicMethod dynamicMethod = new DynamicMethod("", typeof(ulong), parameterTypes);
            ILGenerator iLGenerator = dynamicMethod.GetILGenerator();
            iLGenerator.DeclareLocal(typeof(ulong), true);
            iLGenerator.DeclareLocal(typeof(int), true);
            iLGenerator.DeclareLocal(typeof(ulong), true);
            iLGenerator.DeclareLocal(typeof(bool), true);
            Label label = iLGenerator.DefineLabel();
            Label label2 = iLGenerator.DefineLabel();
            Label label3 = iLGenerator.DefineLabel();
            IlParticlesEmitor ilParticlesEmitor = new IlParticlesEmitor(iLGenerator);
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Nop, null, "IL_00000"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldc_I8, 3074457345618258791L, "IL_00010"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Stloc_0, null, "IL_000a0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldc_I4_0, null, "IL_000b0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Stloc_1, null, "IL_000c0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Br_S, label, "IL_000d0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(label2, null, "IL_000d9"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Nop, null, "IL_000f0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_0, null, "IL_00100"));
            try
            {
                //this instruction depends on first 8 bits of TextBox1
                //Console.WriteLine("emit: " + hashtable[instructionHashes[0]]);
                ilParticlesEmitor.addILParticle(new ILEmitParticle(hashtable[instructionHashes[0]], null, "IL_00110"));
            }
            catch (Exception)
            {
            }
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_1, null, "IL_00120"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Callvirt, typeof(string).GetMethod("get_Chars"), "IL_00130"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Conv_U8, null, "IL_00180"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Add, null, "IL_00190"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Stloc_0, null, "IL_001a0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_0, null, "IL_001b0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldc_I8, 3074457345618258799L, "IL_001c0"));
            try
            {
                //this instruction depends on second 8 bits of TextBox1
                //Console.WriteLine("emit: " + hashtable[instructionHashes[1]]);
                ilParticlesEmitor.addILParticle(new ILEmitParticle(hashtable[instructionHashes[1]], null, "IL_00250"));
            }
            catch (Exception)
            {
            }
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Stloc_0, null, "IL_00260"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Nop, null, "IL_00270"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_1, null, "IL_00280"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldc_I4_1, null, "IL_00290"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Add, null, "IL_002a0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Stloc_1, null, "IL_002b0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(label, null, "IL_002b9"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_1, null, "IL_002c0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldarg_0, null, "IL_002d0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Callvirt, typeof(string).GetMethod("get_Length"), "IL_002e0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Clt, null, "IL_00330"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Stloc_3, null, "IL_00350"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_3, null, "IL_00360"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Brtrue_S, label2, "IL_00370"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_0, null, "IL_00390"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Stloc_2, null, "IL_003a0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Br_S, label3, "IL_003b0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(label3, null, "IL_003c9"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ldloc_2, null, "IL_003d0"));
            ilParticlesEmitor.addILParticle(new ILEmitParticle(OpCodes.Ret, null, "IL_003e0"));
            ilParticlesEmitor.emitParticles();
            return dynamicMethod;
        }

        public static DynMethodFactory.OneParameter<uint, string> create_HashMethodForOpcodes()
        {
            Type[] parameterTypes = new Type[]
			{
				typeof(string)
			};
            DynamicMethod dynamicMethod = new DynamicMethod("", typeof(uint), parameterTypes);
            ILGenerator iLGenerator = dynamicMethod.GetILGenerator();
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(int));
            Label label = iLGenerator.DefineLabel();
            Label label2 = iLGenerator.DefineLabel();
            MethodInfo method = typeof(string).GetMethod("get_Chars", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null, new Type[]
			{
				typeof(int)
			}, null);
            MethodInfo method2 = typeof(string).GetMethod("get_Length", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null, new Type[0], null);
            iLGenerator.Emit(OpCodes.Ldc_I4_0);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldc_I4_0);
            iLGenerator.Emit(OpCodes.Stloc_1);
            iLGenerator.Emit(OpCodes.Br_S, label);
            iLGenerator.MarkLabel(label2);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldarg_0);
            iLGenerator.Emit(OpCodes.Ldloc_1);
            iLGenerator.Emit(OpCodes.Callvirt, method);
            iLGenerator.Emit(OpCodes.Add);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldc_I4_S, 10);
            iLGenerator.Emit(OpCodes.Shl);
            iLGenerator.Emit(OpCodes.Add);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldc_I4_6);
            iLGenerator.Emit(OpCodes.Shr_Un);
            iLGenerator.Emit(OpCodes.Xor);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_1);
            iLGenerator.Emit(OpCodes.Ldc_I4_1);
            iLGenerator.Emit(OpCodes.Add);
            iLGenerator.Emit(OpCodes.Stloc_1);
            iLGenerator.MarkLabel(label);
            iLGenerator.Emit(OpCodes.Ldloc_1);
            iLGenerator.Emit(OpCodes.Ldarg_0);
            iLGenerator.Emit(OpCodes.Callvirt, method2);
            iLGenerator.Emit(OpCodes.Blt_S, label2);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldc_I4_3);
            iLGenerator.Emit(OpCodes.Shl);
            iLGenerator.Emit(OpCodes.Add);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldc_I4_S, 11);
            iLGenerator.Emit(OpCodes.Shr_Un);
            iLGenerator.Emit(OpCodes.Xor);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldc_I4_S, 15);
            iLGenerator.Emit(OpCodes.Shl);
            iLGenerator.Emit(OpCodes.Add);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ret);
            return (DynMethodFactory.OneParameter<uint, string>)dynamicMethod.CreateDelegate(typeof(DynMethodFactory.OneParameter<uint, string>));
        }

        public static void find_calibrationcode1(List<char> List_B, Hashtable hashtable_0) {
            string[] array = File.ReadAllLines("test.txt");
            DynamicMethod d = null;
            ulong result = 0;
            foreach(string s1 in array) 
            {
                foreach (string s2 in array)
                {
                    d = createMethod(new uint[] { Convert.ToUInt32(s1, 16), Convert.ToUInt32(s2, 16) });
                    for (int i = 0; i < 128; i++)
                    {
                        try
                        {
                            result = (ulong)d.Invoke(null, new object[] { (List_B[0].ToString() + (char)i) });
                            if (hashtable_0.ContainsKey(result))
                            {
                                Console.WriteLine("calibrationcode1: 0" + s1 + s2);
                                return;
                            }
                        }
                        catch (TargetInvocationException)
                        {
                            break;
                        }

                    }
                }
            }
        }

        public static void valid_values(List<char> List_B, Hashtable hashtable_0)
        {
            DynamicMethod d = createMethod(new uint[] { Convert.ToUInt32("364abe7", 16), Convert.ToUInt32("2d29c96c", 16) });
            Int32 num = 0;
            UInt64 result = 0;
            while(num < List_B.Count) {
                result = (ulong)d.Invoke(null, new object[] { List_B[num].ToString() });
                if(hashtable_0.ContainsKey(result)) {
                    Console.WriteLine("position: " + num);
                }
                num++;
            }
        }

        public static void find_calibrationcode2(List<char> List_B, Hashtable hashtable_0)
        {
            DynamicMethod d = createMethod(new uint[] { Convert.ToUInt32("364abe7", 16), Convert.ToUInt32("2d29c96c", 16) });
            Int32 num = 0;
            char[] calibrationcode2 = new char[22];
            while (num < 22)
            {
                for (int i = 0; i < 128; i++)
                {
                    if (hashtable_0.ContainsKey((ulong)d.Invoke(null, new object[] { (List_B[num].ToString() + (char)i) })))
                    {
                        calibrationcode2[num] = (char)i;
                        break;
                    }
                }
                num++;
            }
            Console.WriteLine("calibrationcode2: " + new String(calibrationcode2));
        }

        public static void Main()
        {
            /* Initialization */
            //List_B
            List<char> List_B = new List<char>();
            List_B.Add('0');
            List_B.Add('1');
            List_B.Add('2');
            List_B.Add('3');
            List_B.Add('4');
            List_B.Add('5');
            List_B.Add('6');
            List_B.Add('7');
            List_B.Add('8');
            List_B.Add('9');
            List_B.Add('A');
            List_B.Add('B');
            List_B.Add('C');
            List_B.Add('D');
            List_B.Add('E');
            List_B.Add('F');
            List_B.Add('G');
            List_B.Add('H');
            List_B.Add('I');
            List_B.Add('J');
            List_B.Add('K');
            List_B.Add('L');
            List_B.Add('M');
            List_B.Add('N');
            List_B.Add('O');
            List_B.Add('P');
            List_B.Add('Q');
            List_B.Add('R');
            List_B.Add('/');
            List_B.Add('S');
            List_B.Add('T');
            List_B.Add('U');
            List_B.Add('V');
            List_B.Add('W');
            List_B.Add('X');
            List_B.Add('Y');
            List_B.Add('Z');
            List_B.Add('a');
            List_B.Add('b');
            List_B.Add('c');
            List_B.Add('d');
            List_B.Add('e');
            List_B.Add('f');
            List_B.Add('g');
            List_B.Add('h');
            List_B.Add('i');
            List_B.Add('j');
            List_B.Add('k');
            List_B.Add('l');
            List_B.Add('m');
            List_B.Add('n');
            List_B.Add('o');
            List_B.Add('p');
            List_B.Add('q');
            List_B.Add('r');
            List_B.Add('s');
            List_B.Add('t');
            List_B.Add('u');
            List_B.Add('v');
            List_B.Add('w');
            List_B.Add('x');
            List_B.Add('y');
            List_B.Add('z');
            List_B.Add(':');
            List_B.Add('#');
            List_B.Add('@');
            List_B.Add('\'');
            List_B.Add('=');
            List_B.Add('"');
            List_B.Add('.');
            List_B.Add('<');
            List_B.Add('(');
            List_B.Add('+');
            List_B.Add('|');
            List_B.Add('$');
            List_B.Add('*');
            List_B.Add(')');
            List_B.Add(';');
            List_B.Add(',');
            List_B.Add('%');
            List_B.Add('_');
            List_B.Add('>');
            List_B.Add('?');
            List_B.Add(' ');
            List_B.Add('-');
            List_B.Add('&');
            //List_A
            List<int> List_A = new List<int>();
            List_A.Add(Convert.ToInt32("001000000000", 2));
            List_A.Add(Convert.ToInt32("000100000000", 2));
            List_A.Add(Convert.ToInt32("000010000000", 2));
            List_A.Add(Convert.ToInt32("000001000000", 2));
            List_A.Add(Convert.ToInt32("000000100000", 2));
            List_A.Add(Convert.ToInt32("000000010000", 2));
            List_A.Add(Convert.ToInt32("000000001000", 2));
            List_A.Add(Convert.ToInt32("000000000100", 2));
            List_A.Add(Convert.ToInt32("000000000010", 2));
            List_A.Add(Convert.ToInt32("000000000001", 2));
            List_A.Add(Convert.ToInt32("100100000000", 2));
            List_A.Add(Convert.ToInt32("100010000000", 2));
            List_A.Add(Convert.ToInt32("100001000000", 2));
            List_A.Add(Convert.ToInt32("100000100000", 2));
            List_A.Add(Convert.ToInt32("100000010000", 2));
            List_A.Add(Convert.ToInt32("100000001000", 2));
            List_A.Add(Convert.ToInt32("100000000100", 2));
            List_A.Add(Convert.ToInt32("100000000010", 2));
            List_A.Add(Convert.ToInt32("100000000001", 2));
            List_A.Add(Convert.ToInt32("010100000000", 2));
            List_A.Add(Convert.ToInt32("010010000000", 2));
            List_A.Add(Convert.ToInt32("010001000000", 2));
            List_A.Add(Convert.ToInt32("010000100000", 2));
            List_A.Add(Convert.ToInt32("010000010000", 2));
            List_A.Add(Convert.ToInt32("010000001000", 2));
            List_A.Add(Convert.ToInt32("010000000100", 2));
            List_A.Add(Convert.ToInt32("010000000010", 2));
            List_A.Add(Convert.ToInt32("010000000001", 2));
            List_A.Add(Convert.ToInt32("001100000000", 2));
            List_A.Add(Convert.ToInt32("001010000000", 2));
            List_A.Add(Convert.ToInt32("001001000000", 2));
            List_A.Add(Convert.ToInt32("001000100000", 2));
            List_A.Add(Convert.ToInt32("001000010000", 2));
            List_A.Add(Convert.ToInt32("001000001000", 2));
            List_A.Add(Convert.ToInt32("001000000100", 2));
            List_A.Add(Convert.ToInt32("001000000010", 2));
            List_A.Add(Convert.ToInt32("001000000001", 2));
            List_A.Add(Convert.ToInt32("101100000000", 2));
            List_A.Add(Convert.ToInt32("101010000000", 2));
            List_A.Add(Convert.ToInt32("101001000000", 2));
            List_A.Add(Convert.ToInt32("101000100000", 2));
            List_A.Add(Convert.ToInt32("101000010000", 2));
            List_A.Add(Convert.ToInt32("101000001000", 2));
            List_A.Add(Convert.ToInt32("101000000100", 2));
            List_A.Add(Convert.ToInt32("101000000010", 2));
            List_A.Add(Convert.ToInt32("101000000001", 2));
            List_A.Add(Convert.ToInt32("110100000000", 2));
            List_A.Add(Convert.ToInt32("110010000000", 2));
            List_A.Add(Convert.ToInt32("110001000000", 2));
            List_A.Add(Convert.ToInt32("110000100000", 2));
            List_A.Add(Convert.ToInt32("110000010000", 2));
            List_A.Add(Convert.ToInt32("110000001000", 2));
            List_A.Add(Convert.ToInt32("110000000100", 2));
            List_A.Add(Convert.ToInt32("110000000010", 2));
            List_A.Add(Convert.ToInt32("110000000001", 2));
            List_A.Add(Convert.ToInt32("011010000000", 2));
            List_A.Add(Convert.ToInt32("011001000000", 2));
            List_A.Add(Convert.ToInt32("011000100000", 2));
            List_A.Add(Convert.ToInt32("011000010000", 2));
            List_A.Add(Convert.ToInt32("011000001000", 2));
            List_A.Add(Convert.ToInt32("011000000100", 2));
            List_A.Add(Convert.ToInt32("011000000010", 2));
            List_A.Add(Convert.ToInt32("011000000001", 2));
            List_A.Add(Convert.ToInt32("000010000010", 2));
            List_A.Add(Convert.ToInt32("000001000010", 2));
            List_A.Add(Convert.ToInt32("000000100010", 2));
            List_A.Add(Convert.ToInt32("000000010010", 2));
            List_A.Add(Convert.ToInt32("000000001010", 2));
            List_A.Add(Convert.ToInt32("000000000110", 2));
            List_A.Add(Convert.ToInt32("100001000010", 2));
            List_A.Add(Convert.ToInt32("100000100010", 2));
            List_A.Add(Convert.ToInt32("100000010010", 2));
            List_A.Add(Convert.ToInt32("100000001010", 2));
            List_A.Add(Convert.ToInt32("100000000110", 2));
            List_A.Add(Convert.ToInt32("010001000010", 2));
            List_A.Add(Convert.ToInt32("010000100010", 2));
            List_A.Add(Convert.ToInt32("010000010010", 2));
            List_A.Add(Convert.ToInt32("010000001010", 2));
            List_A.Add(Convert.ToInt32("001001000010", 2));
            List_A.Add(Convert.ToInt32("001000100010", 2));
            List_A.Add(Convert.ToInt32("001000010010", 2));
            List_A.Add(Convert.ToInt32("001000001010", 2));
            List_A.Add(Convert.ToInt32("001000000110", 2));
            List_A.Add(Convert.ToInt32("000000000000", 2));
            List_A.Add(Convert.ToInt32("010000000000", 2));
            List_A.Add(Convert.ToInt32("100000000000", 2));
            /*foreach(Int32 a in List_A) {
                Console.WriteLine(a);
            }*/
            Hashtable Hashtable_A = new Hashtable();
            byte[] value = File.ReadAllBytes("value.bin");
            int num = 0;
            while(num < List_B.Count) {
                Hashtable_A.Add(BitConverter.ToUInt64(value, num * 8), List_A[num]);
                num++;
            }
            /* Computation */
            find_calibrationcode1(List_B, Hashtable_A);
            //valid_values(List_B, Hashtable_A);
            find_calibrationcode2(List_B, Hashtable_A);
            Console.WriteLine("Press any key to exit...");
            Console.ReadLine();
        }
    }
}
