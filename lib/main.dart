import 'package:flutter/material.dart';

import 'package:pages/library/library_thumbnail.dart';
import 'package:pages/library/library.dart';

// I'll use dummy store while in dev stage/mode.
import 'package:pages/dummy_stuff/dummy_store.dart';

void main() => runApp(PagesApp());

class PagesApp extends StatelessWidget {
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
    return new LibrariesCatalogView();
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class LibrariesCatalogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Library> libList = List<Library>();
    List<LibraryThumbnail> thumbnailList = List<LibraryThumbnail>();
    libList = DummyStore.getListOfLibraries(5);
    for (var i = 0; i < libList.length; i++) {
      print(libList[i].name);
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
            mainAxisSpacing: 10.0,
            children: thumbnailList));
  }
}
