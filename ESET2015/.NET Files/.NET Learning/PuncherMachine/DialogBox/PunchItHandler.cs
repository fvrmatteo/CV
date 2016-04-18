private void PunchItHandler(object sender, EventArgs e) {
	try {
		this.PunchItButton.Enabled = false;
		this.Class_g.A(this.TextBox_A.Text.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries));
	} catch (C) {
	}
}
