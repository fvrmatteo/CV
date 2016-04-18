public string[] getCreateMethodParameter()
{
	List<string> list = new List<string>();
	int num;
	byte[] array;
	int num2;
	int num3;
	int num4 = 0;
	while (num4 < 1000)
	{
		if(this.bool_A)
		{
			return list.ToArray();
		}
		else
		{
			string text = string.Format("punch_card_{0}.bmp", Convert.ToString(num4).PadLeft(3, '0'));
			if (File.Exists(text))
			{
				Bitmap bitmap = new Bitmap(text, true);
				if(bitmap.PixelFormat == PixelFormat.Format4bppIndexed)
				{
					if (bitmap.Width == 600)
					{
						if(bitmap.Height == 259)
						{
							BitmapData bitmapData = bitmap.LockBits(new Rectangle(0, 0, bitmap.Width, bitmap.Height), ImageLockMode.ReadOnly, bitmap.PixelFormat);
							array = new byte[bitmapData.Height * bitmapData.Stride];
							Marshal.Copy(bitmapData.Scan0, array, 0, array.Length);
							bitmap.UnlockBits(bitmapData);
							StringBuilder stringBuilder = new StringBuilder();
							num = 22;
							while (num < 582)
							{
								num3 = 0;
								num5 = 1;
								num2 = 197;
								while (num2 > -7)
								{
									if (this.A(array, num, num2))
									{
										num3 |= num5;
										num5 <<= 1;
										num2 -= 17;
									}
									num5 <<= 1;
									num2 -= 17;
								}
								if (this.Hashtable_A.ContainsKey(num3))
								{
									stringBuilder.Append(this.Hashtable_A[num3]);
									num += 7;
								}
								num += 7;
							}
							list.Add(stringBuilder.ToString().TrimEnd(new char[]
							{
								' '
							}));
							bitmap.Dispose();
							num4++;
						}
						else
						{
							throw new ExceptionHandler_a("Invalid picture format!");
						}
					}
					else
					{
						throw new ExceptionHandler_a("Invalid picture format!");
					}
				}
				else
				{
					throw new ExceptionHandler_a("Invalid picture format!");
				}
			}
		}
	}
	return list.ToArray();
}
	//-------------------------------------
	while (true)
	{
		IL_295:
		int arg_241_0 = 1711847806;
		while (true)
		{
			int num;
			byte[] array;
			int num2;
			int num3;
			switch (arg_241_0 ^ 1711847790)
			{
				case 0:
				{
					Bitmap bitmap;
					if (bitmap.Width == 600)
					{
						arg_241_0 = ((bitmap.Height != 259) ? 1711847786 : 1711847785);
						continue;
					}
					goto IL_29C;
				}
				case 1:
					arg_241_0 = 1711847787;
					continue;
				case 2:
					goto IL_137;
				case 3:
					goto IL_1ED;
				case 4:
					goto IL_29C;
				case 5:
					if (num >= 582)
					{
						StringBuilder stringBuilder;
						list.Add(stringBuilder.ToString().TrimEnd(new char[]
						{
							' '
						}));
						Bitmap bitmap;
						bitmap.Dispose();
						arg_241_0 = 1711847779;
						continue;
					}
					goto IL_1ED;
				case 6:
				{
					StringBuilder stringBuilder = new StringBuilder();
					arg_241_0 = 1711847783;
					continue;
				}
				case 7:
				{
					Bitmap bitmap;
					BitmapData bitmapData = bitmap.LockBits(new Rectangle(0, 0, bitmap.Width, bitmap.Height), ImageLockMode.ReadOnly, bitmap.PixelFormat);
					array = new byte[bitmapData.Height * bitmapData.Stride];
					Marshal.Copy(bitmapData.Scan0, array, 0, array.Length);
					bitmap.UnlockBits(bitmapData);
					arg_241_0 = 1711847784;
					continue;
				}
				case 8:
					if (num2 > -7)
					{
						goto IL_96;
					}
					if (this.Hashtable_A.ContainsKey(num3))
					{
						StringBuilder stringBuilder;
						stringBuilder.Append(this.Hashtable_A[num3]);
						arg_241_0 = 1711847788;
						continue;
					}
					goto IL_137;
				case 9:
					num = 22;
					arg_241_0 = 1711847791;
					continue;
				case 10:
				{
					int num4;
					string text = string.Format("punch_card_{0}.bmp", Convert.ToString(num4).PadLeft(3, '0'));
					if (File.Exists(text))
					{
						Bitmap bitmap = new Bitmap(text, true);
						arg_241_0 = 1711847804;
						continue;
					}
					break;
				}
				case 12:
					goto IL_96;
				case 13:
				{
					int num4;
					num4++;
					arg_241_0 = 1711847776;
					continue;
				}
				case 14:
				{
					int num4;
					if (num4 < 1000)
					{
						arg_241_0 = (this.bool_A ? 1711847781 : 1711847780);
						continue;
					}
					break;
				}
				case 15:
					goto IL_295;
				case 16:
				{
					int num4 = 0;
					arg_241_0 = 1711847776;
					continue;
				}
				case 17:
					goto IL_34;
				case 18:
				{
					Bitmap bitmap;
					arg_241_0 = ((bitmap.PixelFormat == PixelFormat.Format4bppIndexed) ? 1711847790 : 1711847786);
					continue;
				}
			}
			goto Block_11;
			IL_34:
			int num5;
			num5 <<= 1;
			num2 -= 17;
			arg_241_0 = 1711847782;
			continue;
			IL_96:
			if (this.A(array, num, num2))
			{
				num3 |= num5;
				arg_241_0 = 1711847807;
				continue;
			}
			goto IL_34;
			IL_137:
			num += 7;
			arg_241_0 = 1711847787;
			continue;
			IL_1ED:
			num3 = 0;
			num5 = 1;
			num2 = 197;
			arg_241_0 = 1711847782;
		}
	}
	Block_11:
	goto IL_2A7;
	IL_29C:
	throw new ExceptionHandler_a("Invalid picture format!");
	IL_2A7:
	return list.ToArray();
}
