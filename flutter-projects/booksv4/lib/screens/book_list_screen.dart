// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../components/book_info_line.dart';
import '../components/utils.dart';
import '../services/BookManager.dart';
import '../services/BookSeeder.dart';
import 'book_add_screen.dart';
import 'book_details_screen.dart';


class BookListScreen extends StatelessWidget {
   static const routeName="/book/list";
  final BookManager bookManager = BookManager();
  
  BookListScreen( {Key? key}) : super(key: key) {
    seedBooks(bookManager);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor:Colors.black,
          title: Text('Books'),
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.add,
                  
                ),
              ),
              onTap: () {
                //toast(context,'Adding New Book');
                Navigator.of(context).pushNamed(BookAddScreen.routeName,);
              },
            )
          ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Total Books: ${bookManager.getAllBooks().length}',
            ),
            Expanded(
              child: ListView.builder(
                    itemCount: bookManager.getAllBooks().length,
                    itemBuilder: (ctx, index){
                      var b = bookManager.getAllBooks()[index];
                      return GestureDetector(
                              onTap: (){
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context)=> BookDetailsScreen(b)
                                //     ),
                                //   );

                                Navigator.of(context)
                                        .pushNamed(BookDetailsScreen.routeName, arguments:b);
                              },
                              child: BookInfoLine(b)
                            );
                    },
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
