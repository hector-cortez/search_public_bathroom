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
              leading: Icon(Icons.location_on, color: Colors.blue[800],),
              title: Text('Map'),
              subtitle: Text('data'),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue[800],),
              title: Text('Album'),
              subtitle: Text('data'),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue[800],),
              title: Text('Phone'),
              subtitle: Text('data'),
            ),
          ],
        ),
    );
  }
}

