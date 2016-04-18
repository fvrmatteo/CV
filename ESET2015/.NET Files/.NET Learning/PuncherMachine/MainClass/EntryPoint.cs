private static void EntryPoint() {
	if (!Debugger.IsAttached) {
		if(!Debugger.IsLogging()) {
			MainClass.CalledByEntryPoint();
			bool flag;
			//creates a Mutex to check if another instance is already running
			Mutex obj = new Mutex(true, "3023912A-E3F8-4026-B6E1-3950992FAFE8", ref flag);
			if(flag) {
				Application.EnableVisualStyles();
				Application.SetCompatibleTextRenderingDefault(false);
				Application.Run(new DialogBox());
				//keeps the Mutex alive -> the Garbage Collector will not remove it
				Mutex obj;
				GC.KeepAlive(obj);
			} else {
				MessageBox.Show("Another instance is already running.");
			}
		}
	}
}