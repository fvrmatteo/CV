public static byte[] A(string string_0)
{
	//string_0 = "PunchCard.bmp"
	FileStream fileStream = File.OpenRead(string_0);
	MD5 mD = MD5.Create();
	byte[] result;
	try
		result = mD.ComputeHash(fileStream);
	}
	finally
	{
		if (mD != null)
		{
			((IDisposable)mD).Dispose();
		}
	}
	fileStream.Close();
	return result;
}