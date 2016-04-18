protected override void Dispose(bool disposing)
{
	if (!disposing || this.IContainer_A == null)
	{
		base.Dispose(disposing);
	}
	this.IContainer_A.Dispose();
}
