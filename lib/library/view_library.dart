import 'package:flutter/material.dart';

import 'package:pages/library/library.dart';
import 'package:pages/book/book.dart';
import 'package:pages/book/view_book.dart';
import 'package:pages/dummy_store/dummy_store.dart';

class ViewLibrary extends StatelessWidget {
  final Library library;

  ViewLibrary(this.library);

  @override
  Widget build(BuildContext context) {
    List<Book> libraryBooks = DummyStore.getBooksInLibrary(this.library.getDisplayName());
    return Scaffold(
        appBar: AppBar(title: Text("Pages")),
        body: Column(children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 75.0),
            child: Card(child: Text(this.library.getDisplayName())),
          ),
          Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.all(8.0),
                  itemCount: libraryBooks.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ViewBook(libraryBooks[index])));
                        },
                        child: Text(libraryBooks[index].getTitle()));
                  }))
        ]));
  }
}
