

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



void main(){

  var operations=<Function>[
              plus,
              minus,
              multiply, 
              divide,
            ];
 
  var x=50;
  var y=15;

  for(var operation in operations){

      var str=operation.toString(); //get function's description : Closure: (int, int) => int from Function 'plus': static.
      
      var q1= str.indexOf("'"); //find position of first single quote
      var q2= str.lastIndexOf("'"); //find position of last single quote
      var name= str.substring(q1+1,q2); //get string between two quotes

      print("$name( $x, $y ) => ${operation(x,y)}");

     
  }

}





