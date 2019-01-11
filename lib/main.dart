import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'package:pages/library/library_thumbnail.dart';
import 'library/library.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pages',
        theme: new ThemeData(
            primaryColor: Colors.blueGrey, backgroundColor: Colors.blueGrey),
        home: HomePage(),
        color: Colors.blueGrey);
  }
}

class HomePageState extends State<HomePage> {
  List<Library> libList = List<Library>();
  List<LibraryThumbnail> thumbnailList = List<LibraryThumbnail>();

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 9; i++) {
      libList.add(new Library(
          generateWordPairs().take(1).toList().removeLast().asPascalCase));
    }
    for (var i = 0; i < libList.length; i++) {
      thumbnailList.add(new LibraryThumbnail(libList[i].name));
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Pages"),
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: thumbnailList));
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}
