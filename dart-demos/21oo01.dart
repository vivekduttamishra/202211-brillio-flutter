

class Point{

  int? x; //mark nullable. tell null is acceptable
  int y=0; //supply default 
  late String color;  //tell it is ok to be intialized late

}


void main(){

  var p1=new Point();
  p1.color='blue'; //late initialize
  print("$p1 = (${p1.x},${p1.y}) color: ${p1.color}");

  var p2= Point();

  print("$p2 = (${p2.x},${p2.y})");

  p2.x=10;
  p2.y=30;

  print("$p2 = (${p2.x},${p2.y})");

}