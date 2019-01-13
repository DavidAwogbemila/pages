import 'package:flutter/material.dart';

import '../book/book.dart';
import '../book/view_book.dart';

class ViewLibrary extends StatelessWidget {
  final String libraryName;
 
  ViewLibrary(this.libraryName);

  @override
  Widget build(BuildContext context) {
     List<Book> libraryBooks = getBooksInLibrary(this.libraryName);
    return Scaffold(
        appBar: AppBar(title: Text(this.libraryName)),
        body: ListView.separated(
            padding: EdgeInsets.all(8.0),
            itemCount: libraryBooks.length,
            separatorBuilder: (BuildContext context, int index ) {
              return Divider();
            },
            itemBuilder: (BuildContext context, int index) {
              return RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewBook(libraryBooks[index].title)
                    )
                  );
                },
                child:Text(libraryBooks[index].title)
              );
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
