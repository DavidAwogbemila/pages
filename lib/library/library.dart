import 'dart:math';

class Library {
  String name = "";
  int numberOfBooks = 0;
  Library(String name) {
    this.name = name;
    this.numberOfBooks = Random().nextInt(100);
  }
}
