

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

  var operations=[
              plus,
              minus,
              multiply, 
              divide,
            ];
 
  var x=50;
  var y=15;

  for(var i=0;i<operations.length;i++){

    var result=operations[i](x,y);

    

    print(result);

  }

}





