protected void StartedByThread() {
	try {
		MainClass.ManualResetEvent_B.WaitOne();
		if(!this.closeDialogBox) {
			if(base.IsHandleCreated) {
				if (base.InvokeRequired) {
					if (DialogBox.MethodInvoker_A == null) {
						DialogBox.MethodInvoker_A = new MethodInvoker(DialogBox.Exit);
					}
					base.BeginInvoke(DialogBox.MethodInvoker_A);
				}
			}
		}
	} catch (Exception) {
	}
}