import 'package:flutter/material.dart';

import 'package:pages/library/view_library.dart';

class LibraryThumbnail extends StatelessWidget {
  final String _libraryName;
  LibraryThumbnail(this._libraryName);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Card(
        child: Text(this._libraryName),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewLibrary(this._libraryName)));
      },
    );
  }
}
