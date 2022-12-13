



void main(){

  var numbers = [2,3,9,5.6,6];

  print(numbers);

  for(var i=0; i<numbers.length; i++){
    print("numbers[$i] => ${numbers[i]} ");

    numbers[i]*=10;

  }

  for(var number in numbers){
    print(number);
  }


}



