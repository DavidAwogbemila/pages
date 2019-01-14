import 'package:english_words/english_words.dart';
import 'package:pages/library/library.dart';
import 'package:pages/book/book.dart';

class DummyStore {
  static Library getLibrary() {
    Library lib = (new Library(
        generateWordPairs().take(1).toList().removeLast().asPascalCase));
    return lib;
  }

  // This should eventually retrieve data via http (if available ).
  static getBooksInLibrary(String libraryName) {
    List<Book> listOfBooks = List<Book>();

    listOfBooks.add( new Book("futbol", 750, "Alessandro Del Piero" ));
    listOfBooks.add( new Book("fussbol", 500, "Oliver Khan" ));
    listOfBooks.add( new Book("futbol", 1000, "Ronaldo Ronaldinho de Assis Moreira" ));

    return listOfBooks;
  }

  static List<Library> getListOfLibraries(int nr) {
    List<Library> libList = new List<Library>();
    for (int i = 0; i < nr; i++) {
      libList.add(new Library(
        generateWordPairs().take(1).toList().removeLast().asPascalCase));
    }
    return libList;
  }
  
  // This should eventually retrieve data via http (if available).
  static Book getBook(String bookName) {
    return new Book(bookName, 400, "Alessandro Del Piero" );
  }
}
