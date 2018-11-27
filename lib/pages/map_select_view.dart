import 'package:flutter/material.dart';
import 'package:search_public_bathroom/utils/search_public_bathroom.dart';

class MapSelectView extends StatefulWidget {
  _MapSelectViewState createState() => _MapSelectViewState();
}

class _MapSelectViewState extends State<MapSelectView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Bathroom List"),
         backgroundColor: Colors.blue[800],
       ),
    );
  }
}

