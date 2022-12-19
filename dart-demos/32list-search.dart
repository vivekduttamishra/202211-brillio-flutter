
List<int> searchEvens(List<int> values){
  var result =  <int>[];

  for(var value in values)
    if(value%2==0)
      result.add(value);

  return result;
}

List<int> searchGreaterThan20(List<int> values){
  var result= <int> [];

  for(var value in values)
    if(value>20)
      result.add(value);

  return result;
}

List<int> searchPrimes(List<int> values){
  var result=<int> [];
  for(var value in values)
    if(isPrime(value))
      result.add(value);

  return result;
}

bool isPrime(int value) {
  if(value<2)
    return false;

  for(var x=2;x<value;x++)
    if(value%x==0)
      return false;

  return true;
}

void main(){
  var numbers=[2,12,11,19,33,26,37,41,44,16,30];

  var evens= searchEvens(numbers);
  print(evens);

  var gt20= searchGreaterThan20(numbers);
  print(gt20);

  var primes=searchPrimes(numbers);
  print(primes);

}

