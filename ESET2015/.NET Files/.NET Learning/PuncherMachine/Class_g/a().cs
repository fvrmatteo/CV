protected byte[] a()
{
	ResourceManager a = ResourceManager.internal_ResourceManager_A;
	byte[] array;
	while (true)
	{
		IL_50:
		int arg_38_0 = -561386174;
		while (true)
		{
			switch (arg_38_0 ^ -561386176)
			{
			case 1:
				if (array != null)
				{
					arg_38_0 = -561386176;
					continue;
				}
				goto IL_59;
			case 2:
				array = (byte[])a.GetObject(string.Format(StringDecrypter."resource{0}"(), 1));
				arg_38_0 = -561386175;
				continue;
			case 3:
				goto IL_50;
			}
			return array;
		}
	}
	return array;
	IL_59:
	PipeOperations pipeOperations = new PipeOperations();
	try
	{
		array = pipeOperations.PipeOp2(65281, MainClass.Hash_ByteArray_A);
	}
	catch (Exception)
	{
	}
	try
	{
		byte[] array2 = pipeOperations.PipeOp2(65282, MainClass.Hash_ByteArray_A);
		if (array2 != null)
		{
			while (true)
			{
				IL_124:
				int arg_10C_0 = -561386173;
				while (true)
				{
					switch (arg_10C_0 ^ -561386176)
					{
					case 0:
					{
						IEnumerable<int> arg_E1_0 = Enumerable.Range(0, innerClass_B.string_A.Length);
						if (Class_g.Func_A == null)
						{
							Class_g.Func_A = new Func<int, bool>(Class_g.getBool);
						}
						this.byteArray_A = arg_E1_0.Where(Class_g.Func_A).Select(new Func<int, byte>(innerClass_B.getByte)).ToArray<byte>();
						arg_10C_0 = -561386175;
						continue;
					}
					case 2:
						goto IL_124;
					case 3:
					{
						string string_A = Encoding.ASCII.GetString(array2);
						arg_10C_0 = -561386176;
						continue;
					}
					}
					goto Block_9;
				}
			}
			Block_9:;
		}
	}
	catch (Exception)
	{
	}
	return array;
}