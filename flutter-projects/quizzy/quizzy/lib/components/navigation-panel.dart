// ignore_for_file: avoid_print

import 'package:flutter/material.dart';


import '../styles.dart';
// ignore_for_file: prefer_const_constructors

class NavigationPanel extends StatefulWidget {
  int current;
  int total;
  NavigationPanel(this.current, this.total,{Key? key}) : super(key: key);

  @override
  State<NavigationPanel> createState() => _NavigationPanelState();
}

class _NavigationPanelState extends State<NavigationPanel> {
  @override
  Widget build(BuildContext context) {
    return    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton( 
                    onPressed:(){
                      if(widget.current>1){
                         widget.current--;
                         print('going to ${widget.current}');
                      }
                        
                    },
                    
                    child:Icon(
                      Icons.arrow_back_ios,
                    ),

                  ),
                  Text(
                    "${widget.current} of ${widget.total}",
                    style: navigationTextStyle,
                  ),
                  OutlinedButton( 
                    onPressed:(){
                        if(widget.current<widget.total){
                          setState((){
                              widget.current++;
                          });
                          print('going to ${widget.current}');

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