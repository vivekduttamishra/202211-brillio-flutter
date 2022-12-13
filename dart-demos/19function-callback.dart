

int plus(int a, int b){
  return a+b;
}

minus(a,b){
  return a-b;
}
multiply(a,b){
  return a*b;
}

divide(a,b){
  return a/b;
}


void calculator(number1, operation, number2){
  var result= operation(number1,number2);
  //print(operation);

  var str=operation.toString(); 
  
  var q1= str.indexOf("'");
  var q2= str.lastIndexOf("'"); 
  var name="anonymous";
  
  if(q1>=0 && q2>q1) 
    name=str.substring(q1+1,q2); 

  print("$name( $number1, $number2 ) => $result");

  
}


void main(){

  var x=50;
  var y=15;

  int mod (int x,int y){
    return x%y;
  };

  print(mod);


  calculator(x, plus, y);

  calculator(x,minus,y);

  calculator(x,multiply,y);

  calculator(x,divide,y);

  //I need a mod function to calculate


  calculator(x,mod,y);
  

}





