private void AsyncCallbackRead(IAsyncResult iasyncResult_0) {
	PipeCommunication pipeCommunication = (PipeCommunication)iasyncResult_0.AsyncState;
	int int_ = pipeCommunication.getNamedPipeClientStream_A().EndRead(iasyncResult_0);
	if (pipeCommunication.increaseInt32_A(int_) == pipeCommunication.get_byte[]_A().Length) {
		this.ManualResetEvent_a.Set();
	} else {
		if(!pipeCommunication.getNamedPipeClientStream_A().IsConnected) {
		} else {
			pipeCommunication.getNamedPipeClientStream_A().BeginRead(pipeCommunication.get_byte[]_A(), pipeCommunication.getInt32_A(), pipeCommunication.get_byte[]_A().Length - pipeCommunication.getInt32_A(), new AsyncCallback(this.AsyncCallbackRead), pipeCommunication);
		}
	}
}