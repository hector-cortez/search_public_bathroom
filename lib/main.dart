import 'package:flutter/material.dart';
import 'package:search_public_bathroom/pages/splash_screen.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
));
