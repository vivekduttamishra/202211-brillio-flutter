

class Point{
  late int _x;
  late int _y;
  String color;
   
  get x{
    return _x;
  }

  get y{
    return _y;
  }

  set x( value){
    if(value<-100)
      _x=-100;
    else if(value>100)
      _x=100;
    else
      _x=value;
  }

  set y( value){
    if(value<-100)
      _y=-100;
    else if(value>100)
      _y=100;
    else
      _y=value;
  }

   get slope{
    var s= y/x;
    s=(s*100).round()/100;
    return s;
   }

  Point(int x, int y,{this.color="black"}){
    this.x=x; //values are being assigned to properties
    this.y=y; //values are being assigned to properties
  }

   show(){
    print(this);
   }   

   toString(){
    return '${color.toUpperCase()} Point($x,$y)';
   }
  
}
void main(){

  var p1=new  Point(3,4);
  print('p1 is $p1'); // print('p1 is ${p1.toString()}');
  
  p1.show();  

  var p2= Point(3,200, color:'red');
  p2.show();

  p2.x=-400;
  p2.show();

  p2.x=50;
  p2.y=70;

  p2.show();

  

}