import 'package:flutter/material.dart';
import 'package:pages/book/book.dart';

class ViewBook extends StatelessWidget {
  final Book book;
  ViewBook(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pages")),
        body: Column(children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 75.0),
            child: Card(child: Text(this.book.getTitle())),
          )
        ]));
  }
}
