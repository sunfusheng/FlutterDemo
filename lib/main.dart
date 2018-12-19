import 'package:flutter/material.dart';
import 'package:FlutterWidgets/pages/HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        accentColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
