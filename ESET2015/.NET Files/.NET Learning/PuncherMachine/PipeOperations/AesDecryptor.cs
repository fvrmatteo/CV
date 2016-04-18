private byte[] AesDecryptor(byte[] byte_0, byte[] byte_1) {
	int num = byte_0.Length % 16;
	byte[] array = byte_0.Take(byte_0.Length - num).ToArray<byte>();
	using (AesManaged aesManaged = new AesManaged()) {
		aesManaged.Mode = CipherMode.ECB;
		aesManaged.BlockSize = 128;
		aesManaged.KeySize = 256;
		aesManaged.Padding = PaddingMode.None;
		aesManaged.Key = Encoding.ASCII.GetBytes(c.A(byte_1));
		ICryptoTransform cryptoTransform = aesManaged.CreateDecryptor(aesManaged.Key, aesManaged.IV);
		cryptoTransform.TransformBlock(byte_0, 0, array.Length, array, 0);
		byte[] second = byte_0.Skip(byte_0.Length - num).ToArray<byte>();
		return array.Concat(second).ToArray<byte>();
	}
}