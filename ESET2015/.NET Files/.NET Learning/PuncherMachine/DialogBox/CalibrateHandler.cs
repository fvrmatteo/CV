private void CalibrateHandler(object sender, EventArgs e) {
	if (this.Class_g.getClass_b().CheckCalibrateValues(this.TextBoxCalibrate1.Text, this.TextBoxCalibrate2.Text)) {
		this.PictureBox_A.Visible = true;
		this.PictureBox_a.Visible = false;
		this.Button_A.Visible = false;
		this.TextBox_A.Visible = true;
		this.PunchItButton.Visible = true;
		this.Panel_A.Visible = false;
		this.Class_g.b();
	} else {
		MessageBox.Show(StringDecrypter."Calibration error!"(), StringDecrypter."Error!"());
	}
}