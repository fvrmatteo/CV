public g(DialogBox a_0)
{
	//a_0 = main DialogBox of PuncherMachine.exe
	this.bool_A = false;
	this.DialogBox_A = a_0;
	try
	{
		this.ArrayList_A = new ArrayList();
		this.ManualResetEvent_A = new ManualResetEvent(true);
		//generating a byte array
		byte[] array = this.getArray();
		if (array != null)
		{
			File.WriteAllBytes("punchcard.bmp", array);
			using (MD5 mD = MD5.Create())
			{
				this.byteArray_A = mD.ComputeHash(array);
				//retrieves an Assembly block
				Assembly assembly = this.getAssembly();
				if (assembly != null)
				{
					this.Assembly_A = assembly;
				}
				else
				{
					this.C();
				}
			}
		}
		if (this.byteArray_A == null)
		{
			this.C();
		}
	}
	catch (Exception)
	{
		this.C();
	}
}