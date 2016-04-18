protected void A(byte[] byte_0, int int_0, int int_1, byte byte_1)
{
	int num = 300 * int_1 + (int_0 >> 1);
	if((int_0 & 1) == 0)
	{
		byte_0[num] &= (byte)((int)byte_1 << 4 | 15);
		return;
	}
	else
	{
		byte_0[num] &= (byte_1 | 240);
	}
}
