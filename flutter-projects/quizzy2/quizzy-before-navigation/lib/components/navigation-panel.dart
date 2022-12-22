// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';


import '../styles.dart';
// ignore_for_file: prefer_const_constructors

class NavigationPanel extends StatelessWidget {
  final int current;
  final int total;
  Function onNavigate;
  NavigationPanel(this.current, this.total,{Key? key, 
  required this.onNavigate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton( 
                    onPressed:current==1?null:(){
                      if(current>1){
                        onNavigate(current-1);
                      }
                        
                    },
                    
                    child:Icon(
                      Icons.arrow_back_ios,
                    ),

                  ),
                  Text(
                    "${current} of ${total}",
                    style: navigationTextStyle,
                  ),
                  ElevatedButton( 
                    onPressed:current==total?null:(){
                        if(current<total){
                          onNavigate(current+1);
                      }
                    },
                    child:Icon(
                      Icons.arrow_forward_ios,
                    ),

                  ),
                ],
              );
  }
}