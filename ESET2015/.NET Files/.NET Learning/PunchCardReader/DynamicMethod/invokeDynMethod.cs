//invokeDynMethod(new A.DelegateMethod_A(FinalVerification));
protected void invokeDynMethod(object A.DelegateMethod_A_instance)
{
	try
	{
		string[] createMethodParameter = this.Class_A.getCreateMethodParameter();
		DynamicMethod.A<bool> VerifyDynMethod = this.createMethod(createMethodParameter);
		//VerifyDynMethod must return TRUE -> !TRUE = FALSE -> FinalVerification(A.enum_a.a, null) is called (A.enum_a.a = 1)
		if(!VerifyDynMethod()) 
		{
			this.ManualResetEvent_A.Set();
		}
		else
		{
			//to be seen as: FinalVerification(A.enum_a.a, null);
			((A.DelegateMethod_A)A.DelegateMethod_A_instance)(A.enum_a.a, null);
		}
	}
	catch (Exception object_)
	{
		////to be seen as: FinalVerification(A.enum_a.B, null); (A.enum_a.B = 2)
		((A.DelegateMethod_A)A.DelegateMethod_A_instance)(A.enum_a.B, object_);
	}
}