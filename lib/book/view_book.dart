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
              constraints: const BoxConstraints.expand(height: 90.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset("images/default_book_img.png"),//Icon(Icons.album),
                      title: Text(this.book.getTitle()),
                      subtitle: Text(this.book.getAuthor()),
                    )
                  ],
                ),
              ))
        ]));
  }
}
