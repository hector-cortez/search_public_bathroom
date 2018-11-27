import 'package:flutter/material.dart';


// map_home - Principal
// map_list
// map_select_view
// map_edit

class AppNavigator {
  static void goToMapHome(BuildContext context) {
    Navigator.pushNamed(context, "/maphome");
  }

  static void goToMapList(BuildContext context) {
    Navigator.pushNamed(context, "/maplist");
  }

  static void goToMapSelectView(BuildContext context) {
    Navigator.pushNamed(context, "/mapselectview");
  }

  static void goToMapEdit(BuildContext context) {
    Navigator.pushNamed(context, "/mapedit");
  }  
}