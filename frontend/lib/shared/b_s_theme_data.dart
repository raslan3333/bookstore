import 'package:flutter/material.dart';

ThemeData bsThemeData() {
  return ThemeData(
      primaryColor: Colors.amber[900],
      canvasColor: Color(0xFFF4F5F6),
      // canvasColor: Colors.grey[50],
      primarySwatch: Colors.amber,
      iconTheme: IconThemeData(
        color: Colors.amber[900],
      ),
      buttonColor: Colors.amberAccent,
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.amberAccent),
      appBarTheme: AppBarTheme(color: Colors.white));
}
