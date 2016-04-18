protected void CheckPunchItTextBoxContent(string[] stringsArray)
{
	int line_number = 1;
	int char_index;
	int elem_index = 0;
	string line = "";
	while(elem_index < stringsArray.Length)
	{
		string line2 = stringsArray[elem_index];
		if(line2.Length <= 80)
		{
			line = line2;
			char_index = 0;
			while (char_index < line.Length)
			{
				char c = line[char_index];
				if (this.HashTable_a.ContainsKey(c))
				{
					char_index++;
				}
				else
				{
					throw new ExceptionHandler_C(string.Format("Invalid character on line nr.: {0}", line_number));
				}
			}
			line_number++;
			elem_index++;
		}
		else
		{
			throw new ExceptionHandler_C(string.Format("Maximum line length exceeded on line nr.: {0}", line_number));
		}
	}
	return;
}
