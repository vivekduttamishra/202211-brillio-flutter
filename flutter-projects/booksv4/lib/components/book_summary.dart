// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../const.dart';
import '../services/book.dart';

class BookSummary extends StatelessWidget{
  final Book book;
  const BookSummary(this.book,{Key? key}) : super(key: key);
  createInfoRow(context,label,value){
    return Column(
      children: [
        SizedBox(height:10,),
        Row(
                    crossAxisAlignment:CrossAxisAlignment.end,
                    children: [
                      
                      Expanded(
                        flex:3,
                        child: Text(label,
                            style: Theme.of(context).textTheme.headlineMedium),
                      ),
                      Expanded(
                        flex:7,
                        child: Text(value.toString(),
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ],
                  ),
          Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                book.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Divider(color: dividerColor),
              Image.network(
                book.cover,
                height: 350,
              ),
              createInfoRow(context,'Author',book.author),
              createInfoRow(context,'Price','₹${book.price}'),
              createInfoRow(context,'Rating',book.rating),
              
            ],
          ),
        );
  }

}