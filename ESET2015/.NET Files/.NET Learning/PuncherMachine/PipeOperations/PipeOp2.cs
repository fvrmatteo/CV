public byte[] PipeOp2(int int_0, byte[] byte_0) {
	//called from getByte().cs -> pipeOperations.PipeOp2(65281, MainClass.Hash_ByteArray_A);
	//called from getByte().cs -> pipeOperations.PipeOp2(65282, MainClass.Hash_ByteArray_A);
	//called from getAssembly().cs -> pipeOperations.PipeOp2(65284, MainClass.Hash_ByteArray_A);
	byte[] result;
	try {
		//connects in "localhost" to EsetCrackmePipe
		this.ConnectToPipe();
		//WriteOperation({1, 0, 255})
		//WriteOperation({1, 2, 255})
		//WriteOperation({1, 4, 255})
		this.WriteOperation(new byte[] {
			1,
			(byte)(int_0 & 255),
			(byte)((int_0 & 65280) >> 8)
		});
		byte[] byte_2 = new byte[1];
		byte[] byte_ = new byte[2];
		byte[] array = new byte[4];
		this.ReadOperation(byte_2);
		this.ReadOperation(byte_);
		this.ReadOperation(array);
		//need to understand the value of "num" -> requires debugging possibly
		uint num = BitConverter.ToUInt32(array, 0);
		byte[] array2 = new byte[num];
		this.ReadOperation(array2);
		if(array2.Length != PipeOperations.byteArray_A.Length) {
			//byte_0 = Hash_ByteArray_A
			result = this.AesDecryptor(array2, byte_0);
		} else {
			if(!array2.SequenceEqual(PipeOperations.byteArray_A)) {
				//byte_0 = Hash_ByteArray_A
				result = this.AesDecryptor(array2, byte_0);
			} else {
				result = null;
			}
		}
	} catch (Exception exception_) {
		throw new ExceptionHandler_F(StringDecrypter."Pipe communication failed!"(), exception_);
	}
	return result;
}