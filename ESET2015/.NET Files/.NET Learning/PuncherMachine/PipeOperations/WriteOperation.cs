private void WriteOperation(byte[] byte_0) {
	this.ManualResetEvent_A = new ManualResetEvent(false);
	this.NamedPipeClientStream_A.BeginWrite(byte_0, 0, byte_0.Length, new AsyncCallback(this.AsyncCallbackWrite), this.NamedPipeClientStream_A);
	if(!this.ManualResetEvent_A.WaitOne(2000)) {
		throw new ExceptionHandler_F(StringDecrypter."Write timeout!"());
	}
}