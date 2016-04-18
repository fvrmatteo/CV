private static void CalledByEntryPoint() {
	Thread thread = new Thread(new ParameterizedThreadStart(MainClass.ParameterizedThreadStartRoutine));
	thread.IsBackground = true;
	thread.Start(null);
	MainClass.ManualResetEvent_A.WaitOne();
	MainClass.Hash_ByteArray_A = MainClass.GenerateMD5Hash();
}
