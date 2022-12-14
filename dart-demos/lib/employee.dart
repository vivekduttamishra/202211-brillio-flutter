

import 'person.dart';

class Employee extends Person{

  int id;
  String? department;


  Employee(this.id,String name,{this.department,email}) : super(name);

}