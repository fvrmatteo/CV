protected override void OnLoad(EventArgs e) {
	//the OnLoad event is called right after the DialogBox creation
	this.Panel_A.Location = new Point(57, 449);
	this.Panel_a.Location = new Point(0, 0);
	this.MaximumSize = new Size(600, 500);
	this.MinimumSize = new Size(600, 500);
	this.PictureBox_A.Location = new Point(0, 0);
	this.PictureBox_A.Size = new Size(600, 259);
	this.Panel_A.Location = new Point(10, 310);
	this.TextBox_A.Location = new Point(0, 260);
	this.PunchItButton.Location = new Point(260, 430);
	base.OnLoad(e);
	//instantiating Class_g
	this.Class_g = new g(this);
	//starting a Thread -> handling "Exit" event
	new Thread(new ThreadStart(this.StartedByThread)).Start();
}