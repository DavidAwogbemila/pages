import 'package:flutter/material.dart';

class ViewBook extends StatelessWidget {
  final String bookName;
  ViewBook(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pages")),
        body: Column(children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 75.0),
            child: Card(child: Text(this.bookName)),
          )
        ]));
  }
}
