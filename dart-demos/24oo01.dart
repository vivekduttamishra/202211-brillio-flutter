

class Point{
  int x;
  int y;
  String color;

  Point({required this.x, required this.y, this.color="black"}){
   
  }
}

void main(){

  var p1= Point(x:3,y:4);

  

  var p2= Point(y:7, color:'blue', x:3);


  print("$p1 = (${p1.x},${p1.y})");

  print("$p2 = (${p2.x},${p2.y})");

  p2.x=10;
  p2.y=30;

  print("$p2 = (${p2.x},${p2.y})");

}