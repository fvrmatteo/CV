using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Text;
using System.Reflection;
using System.Reflection.Emit;
using System.IO;
using System.Threading.Tasks;

namespace DynMethod
{
    public static class DynMethodFactory
    {
        public delegate TReturn OneParameter<TReturn, TParameter0>(TParameter0 p0);

        public static DynamicMethod createMethod(string[] instructions)
        {
            OpCode[] array = (from x in typeof(OpCodes).GetFields(BindingFlags.Static | BindingFlags.Public)
                              where x.FieldType == typeof(OpCode)
                              select (OpCode)x.GetValue(null) into x
                              where !x.Name.Equals("break")
                              select x).ToArray<OpCode>();
            Hashtable hashtable = new Hashtable();
            OpCode[] array2 = array;
            for (int i = 0; i < array2.Length; i++)
            {
                OpCode opCode = array2[i];
                hashtable.Add(opCode.Name, opCode);
            }
            /* debug */
            /*List<string> list = new List<string>();
            foreach (DictionaryEntry e in hashtable)
            {
                list.Add(e.Key.ToString());
            }
            File.WriteAllLines("opcodes.txt", list.ToArray());*/
            /* debug */
            Type[] parameterTypes = new Type[0];
            DynamicMethod dynamicMethod = new DynamicMethod("", typeof(bool), parameterTypes);
            ILGenerator iLGenerator = dynamicMethod.GetILGenerator();
            MethodInfo method = typeof(Encoding).GetMethod("get_ASCII", BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic, null, new Type[0], null);
            MethodInfo method2 = typeof(Encoding).GetMethod("GetBytes", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null, new Type[]
			{
				typeof(string)
			}, null);
            MethodInfo method3 = typeof(BitConverter).GetMethod("ToUInt32", BindingFlags.Static | BindingFlags.Public | BindingFlags.NonPublic, null, new Type[]
			{
				typeof(byte[]),
				typeof(int)
			}, null);
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(byte[]));
            iLGenerator.DeclareLocal(typeof(uint));
            iLGenerator.DeclareLocal(typeof(bool));
            iLGenerator.DeclareLocal(typeof(bool));
            Label label = iLGenerator.DefineLabel();
            Label label2 = iLGenerator.DefineLabel();
            iLGenerator.Emit(OpCodes.Nop);
            iLGenerator.Emit(OpCodes.Ldc_I4, 57005);
            iLGenerator.Emit(OpCodes.Stloc_0);
            iLGenerator.Emit(OpCodes.Ldc_I4, 48879);
            iLGenerator.Emit(OpCodes.Stloc_1);
            iLGenerator.Emit(OpCodes.Ldc_I4, 51966);
            iLGenerator.Emit(OpCodes.Stloc_2);
            iLGenerator.Emit(OpCodes.Ldc_I4, 47806);
            iLGenerator.Emit(OpCodes.Stloc_3);
            iLGenerator.Emit(OpCodes.Ldc_I4, 64206);
            iLGenerator.Emit(OpCodes.Stloc_S, 4);
            iLGenerator.Emit(OpCodes.Ldloc_0);
            iLGenerator.Emit(OpCodes.Ldloc_1);
            try
            {
                //this must be an operation between 2 uint
                iLGenerator.Emit((OpCode)hashtable[instructions[0]]);
            }
            catch (Exception)
            {
            }
            iLGenerator.Emit(OpCodes.Ldloc_2);
            iLGenerator.Emit(OpCodes.Ldloc_3);
            try
            {
                //this must be an operation between 2 uint
                iLGenerator.Emit((OpCode)hashtable[instructions[1]]);
            }
            catch (Exception)
            {
            }
            iLGenerator.Emit(OpCodes.Xor);
            iLGenerator.Emit(OpCodes.Ldloc_S, 4);
            iLGenerator.Emit(OpCodes.Xor);
            iLGenerator.Emit(OpCodes.Ldc_I4, -229612108);
            iLGenerator.Emit(OpCodes.Xor);
            iLGenerator.Emit(OpCodes.Stloc_S, 5);
            iLGenerator.Emit(OpCodes.Call, method);
            iLGenerator.Emit(OpCodes.Ldstr, "ESET");
            iLGenerator.Emit(OpCodes.Callvirt, method2);
            iLGenerator.Emit(OpCodes.Stloc_S, 6);
            iLGenerator.Emit(OpCodes.Ldloc_S, 6);
            iLGenerator.Emit(OpCodes.Ldc_I4_0);
            iLGenerator.Emit(OpCodes.Call, method3);
            iLGenerator.Emit(OpCodes.Stloc_S, 7);
            iLGenerator.Emit(OpCodes.Ldloc_S, 5);
            iLGenerator.Emit(OpCodes.Ldloc_S, 7);
            iLGenerator.Emit(OpCodes.Ceq);
            iLGenerator.Emit(OpCodes.Ldc_I4_0);
            iLGenerator.Emit(OpCodes.Ceq);
            iLGenerator.Emit(OpCodes.Stloc_S, 9);
            iLGenerator.Emit(OpCodes.Ldloc_S, 9);
            iLGenerator.Emit(OpCodes.Brtrue_S, label);
            iLGenerator.Emit(OpCodes.Ldc_I4_1);
            iLGenerator.Emit(OpCodes.Stloc_S, 8);
            iLGenerator.Emit(OpCodes.Br_S, label2);
            iLGenerator.MarkLabel(label);
            iLGenerator.Emit(OpCodes.Ldc_I4_0);
            iLGenerator.Emit(OpCodes.Stloc_S, 8);
            iLGenerator.Emit(OpCodes.Br_S, label2);
            iLGenerator.MarkLabel(label2);
            iLGenerator.Emit(OpCodes.Ldloc_S, 8);
            try
            {
                //this must be a "ret" instruction
                iLGenerator.Emit((OpCode)hashtable[instructions[2]]);
            }
            catch (Exception)
            {
            }
            return dynamicMethod;
        }

        public static void Main()
        {
            DynamicMethod d = null;
            string[] s = File.ReadAllLines("opcodes.txt");
            bool result = true;
            object[] o = new object[0];
            foreach(string t1 in s) 
            {
                foreach (string t2 in s)
                {
                    d = createMethod(new string[] { t1, t2, "ret" });
                    try
                    {
                        result = (bool)d.Invoke(null, o);
                        if (result)
                        {
                            Console.WriteLine("{ " + t1 + ", " + t2 + ", " + "ret" + " }");
                        }
                    }
                    catch (TargetInvocationException)
                    {
                        continue;
                    }
                }
            }
            Console.WriteLine("Finished bruteforcing...");
            Console.ReadLine();
        }
    }
}
