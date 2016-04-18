private static byte[] GenerateMD5Hash() {
	//An hash is generated starting from the Assembly of the executable, (sort of anti-tampering protection probably)
	//the hash is saved in Hash_ByteArray_A and is used as AesKey to decrypts data coming throug pipe
	byte[] hash;
	using (MD5 mD = MD5.Create()) {
		IEnumerable<Type> arg_2D_0 = Assembly.GetExecutingAssembly().GetTypes();
		if (MainClass.Func_1 == null) {
			MainClass.Func_1 = new Func<Type, IEnumerable<MethodInfo>>(MainClass.Func_1);
		}
		IEnumerable<MethodInfo> arg_4F_0 = arg_2D_0.SelectMany(MainClass.Func_1);
		if (MainClass.Func_2 == null) {
			MainClass.Func_2 = new Func<MethodInfo, h<MethodInfo, object[]>>(MainClass.Func_2_param);
		}
		IEnumerable<h<MethodInfo, object[]>> arg_71_0 = arg_4F_0.Select(MainClass.Func_2);
		if (MainClass.Func_3 == null) {
			MainClass.Func_3 = new Func<h<MethodInfo, object[]>, bool>(MainClass.Func_3_param);
		}
		IEnumerable<h<MethodInfo, object[]>> arg_93_0 = arg_71_0.Where(MainClass.Func_3);
		if (MainClass.Func_4 == null) {
			MainClass.Func_4 = new Func<h<MethodInfo, object[]>, I<MethodInfo, Useless3>>(MainClass.Func_4_param);
		}
		IEnumerable<I<MethodInfo, Useless3>> enumerable = arg_93_0.Select(MainClass.Func_4);
		IEnumerator<I<MethodInfo, Useless3>> enumerator = enumerable.GetEnumerator();
		try {
			while(enumerator.MoveNext()) {
				I<MethodInfo, Useless3> current = enumerator.Current;
				byte[] iLAsByteArray = current.A().GetMethodBody().GetILAsByteArray();
				mD.TransformBlock(iLAsByteArray, 0, iLAsByteArray.Length, null, 0);
				byte[] bytes = Encoding.UTF8.GetBytes(current.a().string_A);
				mD.TransformBlock(bytes, 0, bytes.Length, null, 0);
			}
		} finally {
			if (enumerator != null) {
				enumerator.Dispose();
			}
		}
		mD.TransformFinalBlock(new byte[0], 0, 0);
		hash = mD.Hash;
	}
	return hash;
}
