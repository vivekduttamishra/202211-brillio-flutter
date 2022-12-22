import 'book.dart';

class BookManager{

  Map<String,Book> books={};
  
  void addBook(Book book){
    books[book.id] = book;
  }

  List<Book> getAllBooks(){
    return books.values.toList();
  }

  Book? getBookById(String id){
    return books[id];
  }

}