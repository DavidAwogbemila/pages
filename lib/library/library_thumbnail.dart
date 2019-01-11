import 'package:flutter/material.dart';

class LibraryThumbnail extends StatelessWidget {
  final String _libraryName;
  LibraryThumbnail(this._libraryName);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(this._libraryName),
    );
  }
}
