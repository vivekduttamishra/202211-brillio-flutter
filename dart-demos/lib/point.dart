import 'dart:ffi';
import 'dart:math';

class Point{

 late double x;
 late double y;
 String color;

 Point(this.x,this.y, {this.color='black'});

 Point.polar(double r, double theta, {this.color='black'}){
   var rad= theta *pi/180; //convert to radian
   x=r*cos(rad);
   y=r*sin(rad);
 }

  
  toString(){
    return '$color Point($x,$y)[$r,$theta]';
  }

  get r{
    return sqrt(x*x+y*y);
  }

  get theta{
    return atan(y/x)*180/pi;
  }

}