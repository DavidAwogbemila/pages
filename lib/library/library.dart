import 'package:pages/book/book.dart';
import 'package:pages/dummy_store/dummy_store.dart';

class Library {
  String _name = "";
  List<Book> _listOfBooks;

  Library(String name) {
    this._name = name;
    this._listOfBooks = DummyStore.getBooksInLibrary(this._name);
  }

  String getDisplayName() {
    return this._name;
  }

  List<Book> getListOfBooks() {
    return this._listOfBooks;
  }
}
