public static void A(Stream stream_0, Stream stream_1)
{
	byte[] array = new byte[8192];
	int count;
	while((count = stream_0.Read(array, 0, array.Length)) >= 0) 
	{
		stream_1.Write(array, 0, count);
	}
}
