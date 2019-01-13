import 'package:flutter/material.dart';


class ViewBook extends StatelessWidget {
  final String bookName;
  ViewBook(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Text(bookName);
  }
}