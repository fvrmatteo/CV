private void passedAsParameter(b.enum_a a_0, object object_0)
{
	MethodInvoker methodInvoker = null;
	DialogBox.InnerClass_A innerClass_A = new DialogBox.InnerClass_A();
	innerClass_A.A = a_0;
	innerClass_A.A = object_0;
	innerClass_A.A = this;
	try
	{
		if (!base.IsHandleCreated)
		{
			return;
		}
		else
		{
			if (base.InvokeRequired)
			{
				if (methodInvoker == null)
				{
					methodInvoker = new MethodInvoker(innerClass_A.A);
				}
				base.Invoke(methodInvoker);
				return;
			} else {
				switch (innerClass_A.A)
				{
				case b.enum_a.A:
					this.PictureBox_A.Image = (Bitmap)innerClass_A.A;
					this.PictureBox_A.Refresh();
					return;
				case b.enum_a.a:
					this.PunchItButton.Enabled = true;
					return;
				case b.enum_a.B:
					MessageBox.Show(((Exception)innerClass_A.A).Message, "Punch error!");
					this.PunchItButton.Enabled = true;
					return;
				default:
					return;
				}
			}
		}
	}
	catch (Exception)
	{
	}
}
