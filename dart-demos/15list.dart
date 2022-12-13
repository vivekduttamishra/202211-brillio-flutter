



void main(){

  var numbers = <double> [2,3.5,9,5,6];

 for(int i = 0; i < numbers.length; i++) 
    numbers[i] = numbers[i] * 0.5;

  print(numbers);

  numbers.clear(); //remove old values

  for(double i=1; i<20;i+=0.5)
    numbers.add(i); //add new values

  print(numbers);

  

}



