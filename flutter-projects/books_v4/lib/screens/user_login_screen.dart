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
  
  var loginForm=GlobalKey<FormState>();
  String? email='',password='';

  @override
  Widget build(BuildContext context) {

    login(){

      var result = loginForm.currentState!.validate(); //run all the validations.
      if(result){
        loginForm.currentState!.save(); //call the save for all fields
        toast(context,'Login successful $email, $password');
      } 
        

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
          child: Form(
            key:loginForm,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.contact_mail),
                    hintText: 'Account Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
          
                  validator: validate([isRequired(),isEmail()]),
                  onSaved:(value){
                    setState((){
                      email=value;
                    });
                  },
                  
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'password',
                  ),
                  
                  obscureText: true,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
          
                  validator: validate([isRequired(),stringLength(5,10)]),
                  onSaved:(value){
                    setState((){
                      password=value;
                    });
                  },                  
                 
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
                      onPressed: login,
                      child: Row(children: [
                        Icon(Icons.login),
                        Text('Sign In'),
                      ]),
                     
                    ),
                    SizedBox(width: 10,),
                    
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
