import 'package:flutter/material.dart';
import 'package:search_public_bathroom/utils/search_public_bathroom.dart';

class MapHome extends StatefulWidget {
  _MapHomeState createState() => _MapHomeState();
}

class _MapHomeState extends State<MapHome> {

  // Menu emergente
  Drawer _getDrawer(BuildContext context)
  {
    var header  = new DrawerHeader(child: new Text("Menu"),);
    var info = new AboutListTile(
      child: new Text("App Description"),
      applicationVersion: "v0.0.2",
      applicationName: "Search Public Bathroom",
      applicationIcon: new Icon(Icons.person_pin_circle),
      icon: new Icon(Icons.info),
      
    );
    ListTile _getItem(Icon icon, String description, String route) {
      return new ListTile(
        leading: icon,
        title: new Text(description),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        }
      );
    }
    ListView listView = new ListView(children: <Widget>[
      header,
      _getItem(new Icon(Icons.home), 'Home', "/maphome"),
      _getItem(new Icon(Icons.description), 'List', "/maplist"),
      _getItem(new Icon(Icons.location_on), "Selected Item", "/mapselectview"),
      _getItem(new Icon(Icons.edit_location), "Edit Location", "/mapedit"),
      info
     ]);

    return new Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text(SearchPublicBathroom.name),
         backgroundColor: Colors.blue[800],
       ),
       drawer: _getDrawer(context),
    );
  }
}

