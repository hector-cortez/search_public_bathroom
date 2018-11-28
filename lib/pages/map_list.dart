import 'package:flutter/material.dart';
import 'package:search_public_bathroom/utils/search_public_bathroom.dart';

class MapList extends StatefulWidget {
  _MapListState createState() => _MapListState();
}

class _MapListState extends State<MapList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("List"),
         backgroundColor: Colors.blue[800],
       ),
       body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
    );
  }
}

