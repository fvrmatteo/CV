public static string A(byte[] byte_0)
{
	StringBuilder stringBuilder = new StringBuilder(byte_0.Length * 2);
	int num = 0;
	while(num < byte_0.Length) 
	{
		byte b = byte_0[num];
		stringBuilder.AppendFormat("{0:x2}", b);
		num++;
	}
	return stringBuilder.ToString();
}