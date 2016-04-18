protected byte[] a()
{
	ResourceManager a = ResourceManager.internal_ResourceManager_A;
	byte[] array;
	//it tries to get a resource named "resource1", but it is not there at program start
	array = (byte[])a.GetObject(string.Format("resource{0}", 1));		
	if (array != null)
	{
		//ok resource found (this is not the case)
	}
	else
	{
		PipeOperations pipeOperations = new PipeOperations();
		try
		{
			//the array contains a decrypted sequence of bytes
			array = pipeOperations.PipeOp2(65281, MainClass.Hash_ByteArray_A);
		}
		catch (Exception)
		{
		}
		try
		{
			//array2 is a decrypted bytes array
			byte[] array2 = pipeOperations.PipeOp2(65282, MainClass.Hash_ByteArray_A);
			if (array2 != null)
			{
				//array2 != null -> decrypted correctly if che hash key is right
				//array2 seems to be an encoded ASCII string
				Class_g.innerClass_B.A = Encoding.ASCII.GetString(array2);
				//Enumerable.Range(0, innerClass_B.string_A.Length) = Generates a sequence of integral numbers within a specified range.
				IEnumerable<int> arg_E1_0 = Enumerable.Range(0, innerClass_B.string_A.Length);
				if (Class_g.Func_A == null)
				{
					Class_g.Func_A = new Func<int, bool>(Class_g.getBool);
				}
				this.byteArray_A = arg_E1_0.Where(Class_g.Func_A).Select(new Func<int, byte>(innerClass_B.getByte)).ToArray<byte>();
			}
		}
		catch (Exception)
		{
		}
	}
	return array;
}