



void main(){

  var x=5;
  var fx= factorial(x);

  print('$x! = $fx');

  var  y=8;

  print("$y! = ${factorial(y)}");
 

  var z='hello';

  print('$z! = ${factorial(z)}');
}

dynamic factorial(dynamic n){

  dynamic fn=1;

  while(n>0)
    fn*=n--;

  return fn;
}



