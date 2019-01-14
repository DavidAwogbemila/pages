import 'package:flutter/material.dart';

import 'package:pages/library/view_library.dart';
import 'package:pages/library/library.dart';

class LibraryThumbnail extends StatelessWidget {
  final Library _library;

  LibraryThumbnail(this._library);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Card(
        child: Text(this._library.getDisplayName()),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewLibrary(this._library)
          ),);
      }
    );
  }
}
