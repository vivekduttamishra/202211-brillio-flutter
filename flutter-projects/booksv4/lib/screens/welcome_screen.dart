
// ignore_for_file: prefer_const_constructors

import 'book_list_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName="/";
  const WelcomeScreen( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('World of Great Books',
            style:TextStyle(
              fontFamily: 'MarckScript',
              fontSize:40,
              fontWeight:FontWeight.bold,
            ),            
          ),
          Image.asset('assets/images/logo01.png'), 
          ElevatedButton(
            child:Text('Start',
                style:TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                ),
              ),
              onPressed:(){
                // Navigator
                //   .of(context)
                //   .push(
                //       MaterialPageRoute(
                //             builder: (context) => BookListScreen()),
                //   );

                //Navigator.of(context).pushNamed(BookListScreen.routeName);

                Navigator.of(context).pushReplacementNamed(BookListScreen.routeName);
              },
            ),
        ]
      ),
    
      
    );
  }

}