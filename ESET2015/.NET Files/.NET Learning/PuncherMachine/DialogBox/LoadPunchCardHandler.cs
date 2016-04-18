private void LoadPunchCardHandler(object sender, EventArgs e) {
	DialogResult dialogResult = this.OpenFileDialog_A.ShowDialog();
	if (dialogResult == DialogResult.OK)
	{
		try {
			//opening and checking PunchCard.bmp image file
			//this.OpenFileDialog_A.FileName = "PunchCard.bmp"
			//this.Class_g.InstanceClass_b("PunchCard.bmp", new b.DelegateMethod_A(this.passedAsParameter));
			this.Class_g.InstanceClass_b(this.OpenFileDialog_A.FileName, new b.DelegateMethod_A(this.passedAsParameter));
			//loading and showing the correct PunchCard.bmp
			this.PictureBox_A.Load(this.OpenFileDialog_A.FileName);
			this.Panel_a.Visible = false;
			this.Panel_A.Visible = true;
			this.PictureBox_A.Visible = true;
		} catch (ExceptionHandler_C c) {
			MessageBox.Show(c.Message, StringDecrypter."Error!"());
		}
	}
}