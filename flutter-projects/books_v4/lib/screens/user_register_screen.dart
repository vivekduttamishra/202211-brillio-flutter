// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, overridden_fields
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/utils.dart';
import '../utils/validators.dart';

class UserRegisterScreen extends StatefulWidget {
  static const routeName = "/user/register";
  UserRegisterScreen({Key? key}) : super(key: key);

  @override
  State<UserRegisterScreen> createState() => _UserRegisterScreenState();
}

class _UserRegisterScreenState extends State<UserRegisterScreen> with Validators{
  String? errorMessage = 'Please enter details';
  String userName = '';
  String password = '';
  String email = '';

  String? _validate() {
   
    var un = isRequired(errorMessage:'userNameRequired')(userName);

    if(un!=null)
      return un;
       

   var e = validate([isRequired(errorMessage:'email is required'),isEmail()])(email);

    if(e!=null)
      return e;

    var p = validate([isRequired(errorMessage:'password is requried'),stringLength(5,10)])(password);

    if(p!=null)
      return p;

    return null;
  }

  @override
  Widget build(BuildContext context) {

    register() {
      if (errorMessage == null) {
        toast(context, 'registration successful $userName, $email');
      } else {
        toast(context, errorMessage, backgroundColor: Theme.of(context).colorScheme.error);
      }
    }

    return Scaffold(
        appBar: AppBar(title: Text('Sign Up'), actions: [
          InkWell(
            onTap: register,
            child: Icon(
              Icons.person_add,
            ),
          ),
        ]),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  //label:Text('Name'),
                  icon: Icon(Icons.person),
                  hintText: 'User Name',
                ),
                autocorrect: false,
                onChanged: (value) {
                  setState(() {
                    userName = value;
                    errorMessage = _validate();
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'You email will be you login id',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                    errorMessage = _validate();
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                  //label:Text('Password'),
                  icon: Icon(Icons.key),
                  hintText: 'Password',
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    password = value;
                    errorMessage = _validate();
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //errorMessage!=null?SizedBox():
                  ElevatedButton(
                    // ignore: sort_child_properties_last
                    child: Row(
                      children: [
                        Icon(Icons.person_add),
                        Text('Register'),
                      ],
                    ),
                    onPressed: register,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: errorMessage != null
                        ? Text(
                            errorMessage!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                          )
                        : SizedBox(width: 0),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
