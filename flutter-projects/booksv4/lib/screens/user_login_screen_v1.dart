// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, overridden_fields
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/utils.dart';
import '../utils/validators.dart';

class UserLoginScreen extends StatefulWidget {
  static const routeName = "/user/login";
  UserLoginScreen({Key? key}) : super(key: key);

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> with Validators {
  
  var email=TextEditingController();
  var password=TextEditingController();

  @override
  Widget build(BuildContext context) {

    login(){

      var _email= email.text;
      var _password=password.text;

      print('trying to login using $_email, $_password');

    }

    return Scaffold(
        appBar: AppBar(title: Text('Sign In'), actions: [
          InkWell(
            child: Icon(
              Icons.save_alt,
            ),
            onTap: () {
              
              
            },
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
                  icon: Icon(Icons.contact_mail),
                  hintText: 'Account Email',
                ),
                keyboardType: TextInputType.emailAddress,
                controller: email,
              ),
              
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.key),
                  hintText: 'password',
                ),
                controller:password,
                obscureText: true,
                autocorrect: false,
                textCapitalization: TextCapitalization.none,
               
              ),
              SizedBox(height:20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(''),
                  ),
                  SizedBox(width:10),
                  ElevatedButton(
                    child: Row(children: [
                      Icon(Icons.login),
                      Text('Sign In'),
                    ]),
                    onPressed: login,
                  ),
                  SizedBox(width: 10,),
                  
                ],
              ),
            ],
          ),
        ));
  }
}
