public bool InitialPipeHandshake(c.a a_0) {
	bool result;
	try {
		this.ConnectToPipe();
		this.WriteOperation(new byte[] {
			2,
			(byte)(a_0 & (c.a)255),
			(byte)((a_0 & c.a.A) >> 8)
		});
		byte[] byte_2 = new byte[1];
		byte[] byte_ = new byte[2];
		byte[] byte_3 = new byte[4];
		byte[] array = new byte[2];
		this.ReadOperation(byte_2);
		this.ReadOperation(byte_);
		this.ReadOperation(byte_3);
		this.ReadOperation(array);
		if(array.Length != PipeOperations.byte[]_a.Length) {
			result = false;
		} else {
			if(!array.SequenceEqual(PipeOperations.byte[]_a)) {
				result = false;
			} else {
				result = true;
			}
		}
	} catch (Exception exception_) {
		throw new ExceptionHandler_F(StringDecrypter."Pipe communication failed!"(), exception_);
	}
	return result;
}