

class Point{
  int x;
  int y;
  String color;

  Point({required this.x, required this.y, this.color="black"});
   
   get slope{
    var s= y/x;
    s=(s*100).round()/100;
    return s;
   }

   show(){
    print('${color.toUpperCase()} Point($x,$y)');
   }   
  
}
void main(){

  var p1=new  Point(x:3,y:4);

  p1.show();  
  print('slope of $p1 is ${p1.slope}');

  var p2= Point(y:7, color:'blue', x:3);



  p2.show();


  p2.x=10;
  p2.y=30;

  p2.show();

}