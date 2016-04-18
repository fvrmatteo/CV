private void AsyncCallbackWrite(IAsyncResult iasyncResult_0) {
	NamedPipeClientStream namedPipeClientStream = (NamedPipeClientStream)iasyncResult_0.AsyncState;
	namedPipeClientStream.EndWrite(iasyncResult_0);
	this.ManualResetEvent_A.Set();
}
