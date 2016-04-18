private static void ParameterizedThreadStartRoutine(object object_0)
{
	//this class continuously checks for Debugger presence
	try
	{
		Thread thread = object_0 as Thread;
		if(thread != null)
		{
			while(!MainClass.Boolean_A)
			{
				if (!Debugger.IsAttached)
				{
					if(!Debugger.IsLogging())
					{
						if(!thread.IsAlive)
						{
							MainClass.ManualResetEvent_B.Set();
							Thread.Sleep(500);
						}
						else
						{
							Thread.Sleep(500);
						}
					}
				}
			}
			lock (MainClass.ObjectLock_A) {
				if (--MainClass.Int32_A == 0) {
					MainClass.ManualResetEvent_a.Set();
				}
			}
		}
		else
		{
			thread = new Thread(new ParameterizedThreadStart(MainClass.ParameterizedThreadStartRoutine));
			thread.IsBackground = true;
			thread.Start(Thread.CurrentThread);
			Thread.Sleep(200);
			MainClass.ManualResetEvent_A.Set();
		}
	}
	catch (Exception)
	{
	}
}
