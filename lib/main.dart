import 'package:flutter/material.dart';
import 'package:search_public_bathroom/pages/splash_screen.dart';
import 'package:search_public_bathroom/pages/map_home.dart';
import 'package:search_public_bathroom/pages/map_list.dart';
import 'package:search_public_bathroom/pages/map_select_view.dart';
import 'package:search_public_bathroom/pages/map_edit.dart';
import 'dart:async';

// Pages 
// map_home - Principal
// map_list
// map_select_view
// map_edit
var routes = <String, WidgetBuilder>{
  "/maphome": (BuildContext context) => MapHome(),
  "/maplist": (BuildContext context) => MapList(),
  "/mapselectview": (BuildContext context) => MapSelectView(),
  "/mapedit": (BuildContext context) => MapEdit(),
};

void main() => runApp(new MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blue[800], 
      accentColor: Colors.blue[900]
    ),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes
));
