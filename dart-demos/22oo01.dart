

class Point{
  int? x;
  int? y;
}


void main(){

  var p1=new Point();

  print("$p1 = (${p1.x},${p1.y})");

  var p2= Point();

  print("$p2 = (${p2.x},${p2.y})");

  p2.x=10;
  p2.y=30;

  print("$p2 = (${p2.x},${p2.y})");

}