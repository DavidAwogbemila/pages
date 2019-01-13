import 'package:flutter/material.dart';

import '../book/book.dart';

class ViewLibrary extends StatelessWidget {
  final String libraryName;
 
  ViewLibrary(this.libraryName);

  @override
  Widget build(BuildContext context) {
     List<Book> libraryBooks = getBooksInLibrary(this.libraryName);
    return Scaffold(
        appBar: AppBar(title: Text(this.libraryName)),
        body: ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemExtent: 20.0,
            itemBuilder: (BuildContext context, int index) {
              if (index < libraryBooks.length) {
                return Text(libraryBooks[index].title);
              }
            }));
  }

  static List<Book> getBooksInLibrary(String libraryName) {
    List<Book> listOfBooks = [
      new Book("Just for fun", 250, "L. Torvalds"),
      new Book("Crime and Punishment", 250, "Dostoyervsky"),
      new Book("The Richest Man in Babylon", 250, "John S. Clayton")
    ];
    return listOfBooks;
  }
}
