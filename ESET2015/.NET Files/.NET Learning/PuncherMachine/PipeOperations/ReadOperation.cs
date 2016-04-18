private void a(byte[] byte_0)
{
	PipeCommunication pipeCommunication = new PipeCommunication(this.NamedPipeClientStream_A, byte_0);
	this.ManualResetEvent_a = new ManualResetEvent(false);
	this.NamedPipeClientStream_A.BeginRead(pipeCommunication.getByteArray_A(), 0, pipeCommunication.getByteArray_A().Length, new AsyncCallback(this.AsyncCallbackRead), pipeCommunication);
	if(!this.ManualResetEvent_a.WaitOne(5000)) {
		throw new ExceptionHandler_F("Read timeout!");
	}
}