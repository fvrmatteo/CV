private b.DelegateMethod_B A(uint[] uint_0)
	MethodInfo method = this.Assembly_A.GetType("DynMethod.DynMethodFactory").GetMethod("createMethod");
	DynamicMethod dynamicMethod = (DynamicMethod)method.Invoke(null, new object[] { uint_0 });
	return (b<ulong, string>.DelegateMethod_B)dynamicMethod.CreateDelegate(typeof(b<ulong, string>.DelegateMethod_B<, >));
}