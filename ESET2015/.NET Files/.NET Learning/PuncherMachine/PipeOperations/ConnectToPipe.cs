private void ConnectToPipe() {
	this.NamedPipeClientStream_A = new NamedPipeClientStream(".", "EsetCrackmePipe", PipeDirection.InOut, PipeOptions.Asynchronous, TokenImpersonationLevel.Impersonation);
	this.NamedPipeClientStream_A.Connect(2000);
}
