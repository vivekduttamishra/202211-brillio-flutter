

int plus(int a, int b){
  return a+b;
}



void main(){

  var add=plus;
  

  print(add);
  
  var r1= add(5,2);

  print('add(5,3) => $r1');

  Function less = minus;

  var r2=less(5,2);

  print(r2);

}


minus(a,b){
  return a-b;
}


