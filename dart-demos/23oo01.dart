

class Point{
  late int x;
  late int y;

  Point(int px,int py){
    x=px;
    y=py;
  }
}


void main(){

  var p1= Point(3,4);

  print("$p1 = (${p1.x},${p1.y})");

  var p2= Point(5,5);

  print("$p2 = (${p2.x},${p2.y})");

  p2.x=10;
  p2.y=30;

  print("$p2 = (${p2.x},${p2.y})");

}