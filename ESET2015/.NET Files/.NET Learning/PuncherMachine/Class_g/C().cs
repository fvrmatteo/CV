public void C()
{
	lock (Class_g.object_A)
	{
		if (!this.bool_A)
		{
			this.bool_A = true;
			if(this.Class_b == null)
			{
				this.ManualResetEvent_A.WaitOne();
				MainClass.Boolean_A = true;
				MainClass.ManualResetEvent_a.WaitOne();
				MainClass.ManualResetEvent_B.Set();
			}
			else
			{
				this.Class_b.set_bool_A_true();
				this.ManualResetEvent_A.WaitOne();
				MainClass.Boolean_A = true;
				MainClass.ManualResetEvent_a.WaitOne();
				MainClass.ManualResetEvent_B.Set();
			}
		}
	}
}