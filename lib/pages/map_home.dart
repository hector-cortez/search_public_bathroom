import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

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

  Padding _getBody(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.all(8.0),
      child: new Column(
        children: [

          new Flexible(
            child: new FlutterMap(
              options: new MapOptions(
                // center: new LatLng(51.5, -0.09),
                center: new LatLng(-16.51, -68.13),
                zoom: 15.0,
              ),
              layers: [
                new TileLayerOptions(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c']),
                new MarkerLayerOptions(
                  markers: [new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(-16.50, -68.13),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue[900],
                        iconSize: 45.0,
                        onPressed: () {
                          print('Test position');
                        },
                      ),
                    )
                  )]
                )
              ],
            ),
          ),

          new Padding(
            padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
            // child: new Text("- This is a map that is showing  (51.5, -0.9)."),
            
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Text(
                      "Descripcion de la direccion",
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.location_on,
                      color: Colors.blueAccent,
                    ),
                    new Text(
                      "123 Metros",
                      style: new TextStyle(color: Colors.blueAccent),
                    ),
                    new IconButton(
                        icon: Icon(Icons.edit_location),
                        tooltip: 'Editar Posición',
                        onPressed: () { setState(() {  }); },
                    )
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Text('Calificación(1..5):'),
                    new Text(
                      'Gratis',
                      style: new TextStyle(color: Colors.orange),
                    )
                  ],
                )
              ],
            ),
          ),

        ],
      ),
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
      body: _getBody(context),
    );
  }
}
