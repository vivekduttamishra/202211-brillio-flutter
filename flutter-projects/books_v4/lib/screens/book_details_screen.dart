// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/book_details.dart';
import '../components/book_reviews.dart';
import '../components/book_summary.dart';
import '../const.dart';
import '../services/book.dart';
import 'book_list_screen.dart';

class BookDetailsScreen extends StatefulWidget {
   static const routeName="/book/details";
  //dynamic book ;
  
  BookDetailsScreen( {Key? key}) : super(key: key);

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {

  int currentTabIndex=0;
  
  List<Function> tabContents=[
        (book)=> BookSummary(book),
        (book)=> BookDetails(book),
        (book)=> BookReviews(book),
    ];
  
  

  @override
  Widget build(BuildContext context) {
    var book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
        
        appBar: AppBar(title: Text(book.title), 
        actions: [
          //This action is removed. It exists only for documentations
          TextButton(
            child: Icon(Icons.list, color:Colors.transparent),
            onPressed: () {
                //Same as the given back button. pops() the top page
               //Navigator.of(context).pop()

               //Adds a a new List Page on the top of current stack.
               //Back will bring me back to this screen 
                //Navigator.pushNamed(context, BookListScreen.routeName);
              
              //Keep going back till you reach ListPage
              //Navigator.popUntil(context, ModalRoute.withName(BookListScreen.routeName));

            },
          ),
        ]),
        body: tabContents[currentTabIndex](book),

        bottomNavigationBar: BottomNavigationBar(
          
          currentIndex:currentTabIndex,


          onTap: (tabIndex){
            setState((){
              currentTabIndex = tabIndex;
            });
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.onPrimary,
          selectedIconTheme: IconThemeData(
            size: 24,
          ),
          unselectedIconTheme: IconThemeData(
            size:18,
          ),
          
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.info,
              
              ),
              label:'Basic',
            ),
             
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_stories,
              
              ),
              label:'Details',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_quote,
              
              ),
              label:'Review',
            ),

          ],

        ),
     
    );
  }
}

