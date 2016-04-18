private void a()
	this.Hashtable_A = new Hashtable();
	PipeOperations pipeOperations = new PipeOperations();
	byte[] value = pipeOperations.PipeOp2(65280, MainClass.Hash_ByteArray_A);
	int num = 0;
	while(num < this.List_B.Count) {
		this.Hashtable_A.Add(BitConverter.ToUInt64(value, num * 8), this.List_A[num]);
		num++;
	}
}