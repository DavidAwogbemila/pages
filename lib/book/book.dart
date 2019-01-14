
class Book {
  String _title;
  int _numberOfPages;
  String _author;
  Book(this._title, this._numberOfPages, this._author);

  String getTitle() {
    return this._title;
  }

  String getAuthor() {
    return this._author;
  }

  int getNumberOfPages() {
    return this._numberOfPages;
  }
}
