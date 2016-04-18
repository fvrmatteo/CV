private void FinalVerification(A.a a_0, object object_0)
{
	//a_0 = 1 or 2
	//object_0 = null or Exception
	//To be right this method must receive (1 & null)
	MethodInvoker methodInvoker = null;
	DialogBox.InnerClass_A innerClass_A = new DialogBox.InnerClass_A();
	innerClass_A.A = a_0;
	innerClass_A.object_A = object_0;
	innerClass_A.DialogBox_A = this;
	try
	{
		A.enum_a enum_a = innerClass_A.(A.enum_a);
		if (!base.IsHandleCreated)
		{
			return;
		}
		if (base.InvokeRequired)
		{
			if (methodInvoker == null)
			{
				methodInvoker = new MethodInvoker(innerClass_A.InnerMethod_A);
			}
			base.BeginInvoke(methodInvoker);
			return;
		}
		switch (enum_a)
		{
		case A.a.a:
			this.DynamicMethod_f.A();
			MessageBox.Show("Verification passed...", "Verification info");
			this.ReadPunchCardButton.Enabled = true;
			return;
		case A.a.B:
			MessageBox.Show("Verification failed...", "Verification error!");
			this.ReadPunchCardButton.Enabled = true;
			return;
		default:
			return;
		}
	}
	catch()
	{
	}
	return;
}