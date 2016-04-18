public bool CheckCalibrateValues(string string_0, string string_1)
{
	List<uint> list = new List<uint>();
	int num = 0;
	while (num < string_0.Length)
	{
		try
		{
			list.Add(Convert.ToUInt32(string_0.Substring(num, 8), 16));
		}
		catch (Exception)
		{
		}
		num += 8;
	}
	//List_A.Count = 86
	if(string_1.Length <= this.List_B.Count) 
	{
		if (string_1.Length == 0)
		{
			return false;
		}
		bool result;
		try
		{
			b<ulong, string>.DelegateMethod_B delegateMethod_B = this.retrieveDynamicMethod(list.ToArray());
			//retrieves data from EsetCrackmePipe and Adds them to Hashtable_A
			this.a();
			//new hashtable to store information
			this.HashTable_a = new Hashtable();
			num = 0;
			while(num < this.List_B.Count) 
			{
				//calls the DelegateMethod (checkCalibrateValues)
				/*
				Possible opcodes:
					mul
					mul.ovf
					mul.ovf.un = a878352c
					sub
					sub.ovf
					sub.ovf.un
					add
					add.ovf
					add.ovf.un = 6d004ddb
					div
					div.un
					--------
					xor
					or
					and
				*/
				ulong num2 = delegateMethod_B((num < string_1.Length) ? (this.List_B[num].ToString() + string_1[num].ToString()) : this.List_B[num].ToString());
				if (this.Hashtable_A.ContainsKey(num2))
				{
					this.HashTable_a.Add(this.List_B[num], this.Hashtable_A[num2]);
					num++;
				} 
				else 
				{
					result = false;
					return result;
				}
				
			}
			result = true;
			return result;
		}
		catch (Exception)
		{
			result = false;
		}
		return result;
	} 
	else
	{
		return false;
	}
}