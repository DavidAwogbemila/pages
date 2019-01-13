import 'package:english_words/english_words.dart';
import 'package:pages/library/library.dart';
import 'package:pages/book/book.dart';

class DummyStore {
  static Library getLibrary() {
    Library lib = (new Library(
        generateWordPairs().take(1).toList().removeLast().asPascalCase));
    return lib;
  }

  static List<Library> getListOfLibraries(int nr) {
    List<Library> libList = new List<Library>();
    for (int i = 0; i < nr; i++) {
      libList.add(new Library(
        generateWordPairs().take(1).toList().removeLast().asPascalCase));
    }
    return libList;
  }
  
  // This should eventually retrieve data via http (if available  ).
  static Book getBook(String bookName) {
    return new Book(bookName, 400, "Alessandro Del Piero" );
  }
}
