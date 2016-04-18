public void CheckPunchItTextBox(string[] string_0)
{
	try
	{
		if (string_0.Length == 0)
		{
			throw new ExceptionHandler_C(string.Format("No data to punch!", new object[0]));
		}
		this.CheckPunchItTextBoxContent(string_0);
		int num4;
		int num5;
		int num8;
		num8 = 0;
		this.SoundPlayer_A.PlaySync();
		num4 = 0;
		while(num4 < string_0.Length) 
		{
			if (this.bool_A)
			{
				this.SoundPlayer_A.PlaySync();
				this.b.DelegateMethod_A(b.enum_a.a, null);
			}
			string text = string_0[num4];
			this.Bitmap_a = this.Bitmap_A.Clone(new Rectangle(0, 0, this.Bitmap_A.Width, this.Bitmap_A.Height), PixelFormat.Format4bppIndexed);
			this.SoundPlayer_A.PlaySync();
			int num6 = 22;
			int num3 = 0;
			string text;
			while(num3 < text.Length) 
			{
				if(!this.bool_A)
				{
					string text;
					char c = text[num3];
					int num = (int)this.HashTable_a[c];
					int num2 = 197;
					BitmapData bitmapData = this.Bitmap_a.LockBits(new Rectangle(0, 0, this.Bitmap_a.Width, this.Bitmap_a.Height), ImageLockMode.ReadWrite, this.Bitmap_a.PixelFormat);
					byte[] array = new byte[bitmapData.Height * bitmapData.Stride];
					Marshal.Copy(bitmapData.Scan0, array, 0, array.Length);
					this.Bitmap_a.UnlockBits(bitmapData);
					while((num & 1) == 1)
					{
						BitmapData bitmapData = this.Bitmap_a.LockBits(new Rectangle(0, 0, this.Bitmap_a.Width, this.Bitmap_a.Height), ImageLockMode.ReadWrite, this.Bitmap_a.PixelFormat);
						int num7 = 0;
						if (num7 >= 3)
						{
							Marshal.Copy(array, 0, bitmapData.Scan0, array.Length);
							this.Bitmap_a.UnlockBits(bitmapData);
							this.b.DelegateMethod_A(b.enum_a.A, new Bitmap(this.Bitmap_a));
							this.SoundPlayer_a.PlaySync();
							num >>= 1;
							num2 -= 17;
							if(num > 0) 
							{
								if(this.bool_A) 
								{
									num6 += 7;
								}
							}
							else
							{
								num6 += 7;
							}
						}
						num5 = 0;
						while(num5 < 7)
						{
							this.A(array, num6 + num7, num2 + num5, 0);
							num5++;
						}
						num7++;
					}
				} 
				else 
				{
					this.SoundPlayer_A.PlaySync();
					string text2 = string.Format("punch_card_{0}.bmp", Convert.ToString(num8).PadLeft(3, '0'));
					try
					{
						Bitmap bitmap = this.Bitmap_a.Clone(new Rectangle(0, 0, this.Bitmap_a.Width, this.Bitmap_a.Height), PixelFormat.Format4bppIndexed);
						bitmap.Save(text2, ImageFormat.Bmp);
					}
					catch (Exception)
					{
						throw new ExceptionHandler_C(string.Format("Can't save punchard with name: {0}", text2));
					}
					num8++;
					num4++;
				}
			}
			this.SoundPlayer_A.PlaySync();
			string text2 = string.Format("punch_card_{0}.bmp", Convert.ToString(num8).PadLeft(3, '0'));
			try
			{
				Bitmap bitmap = this.Bitmap_a.Clone(new Rectangle(0, 0, this.Bitmap_a.Width, this.Bitmap_a.Height), PixelFormat.Format4bppIndexed);
				bitmap.Save(text2, ImageFormat.Bmp);
			}
			catch (Exception)
			{
				throw new ExceptionHandler_C(string.Format("Can't save punchard with name: {0}", text2));
			}
			num8++;
			num4++;
		}
		this.SoundPlayer_A.PlaySync();
		this.b.DelegateMethod_A(b.enum_a.a, null);
	}
	catch (Exception object_)
	{
		this.b.DelegateMethod_A(b.enum_a.B, object_);
	}
}