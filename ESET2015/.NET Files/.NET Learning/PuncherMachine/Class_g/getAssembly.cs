protected Assembly getAssembly()
{
	try
	{
		PipeOperations pipeOperations = new PipeOperations();
		Assembly result;
		byte[] rawAssembly = pipeOperations.PipeOp2(65284, MainClass.Hash_ByteArray_A);
		//Loads the assembly with a COFF format
		Assembly assembly = Assembly.Load(rawAssembly);
		result = assembly;
		return result;
	}
	catch (Exception) {
		return null;
	}
}