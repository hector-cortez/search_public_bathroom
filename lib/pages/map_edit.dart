import 'package:flutter/material.dart';
import 'package:search_public_bathroom/utils/search_public_bathroom.dart';

class MapEdit extends StatefulWidget {
  _MapEditState createState() => _MapEditState();
}

class _MapEditState extends State<MapEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Edit"),
         backgroundColor: Colors.blue[800],
       ),
    );
  }
}

