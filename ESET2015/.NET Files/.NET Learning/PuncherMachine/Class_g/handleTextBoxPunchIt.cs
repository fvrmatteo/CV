public void handleTextBoxPunchIt(string[] string_0)
{
	lock (Class_g.lockObject_A)
	{
		if (!this.bool_A)
		{
			this.ManualResetEvent_A.Reset();
			new Thread(new ParameterizedThreadStart(this.startedByThread_A)).Start(string_0);
		}
	}
}
