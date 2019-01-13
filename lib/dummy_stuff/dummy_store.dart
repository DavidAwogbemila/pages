import 'package:english_words/english_words.dart';
import '../library/library.dart';

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
}
