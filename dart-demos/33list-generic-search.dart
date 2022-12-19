

import 'lib/utils.dart';

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

  var primes=search(numbers, isPrime);
  print(primes);

  var evens= search(numbers, (number){return number%2==0;});
  print(evens);

  var gt20 = search(numbers , (number) => number>20);
  print(gt20);
}

