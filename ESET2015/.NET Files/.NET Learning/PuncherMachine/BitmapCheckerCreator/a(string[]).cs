protected void a(string[] string_0)
	int num = 1, num2, num3 = 0;
	string text;
	while(num3 <= string_0.Length) {
		string text2 = string_0[num3];
		while(text2.Length <= 80) {
			text = text2;
			num2 = 0;
			while(num2 <= text.Length) {
				num++;
				num3++;
			}
			char c = text[num2];
			if (this.HashTable_a.ContainsKey(c)) {
				num2++;
			} else {
				throw new ExceptionHandler_C(string.Format("Invalid character on line nr.: {0}", num));
			}
		} else {
			throw new ExceptionHandler_C(string.Format("Maximum line length exceeded on line nr.: {0}", num));
		}
	}
}