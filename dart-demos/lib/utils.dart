List<T>   search<T> (  List<T> values, Function match){

	var result=<T> [];
	
	for(var value in values)
		if(match(value))
			result.add(value);
			
	return result;
	
}