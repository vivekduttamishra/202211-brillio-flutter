// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../services/book.dart';

class BookInfoLine extends StatelessWidget {
  final Book book;
  
  BookInfoLine(this.book,  {Key? key}) : super(key: key) {
   // print('book info line created for ${book.id}');
  }

  @override
  Widget build(BuildContext context) {
    //print('book info line build for ${book.id}');
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            book.cover,
            height: 180,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  book.title,
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  'by ${book.author}',
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  '₹ ${book.price}',
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  'Rating: ${book.rating}',
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
              
          ]),
        ],
      ),
    );
  }
}
