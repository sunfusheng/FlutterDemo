import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:FlutterWidgets/pages/HomePage.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(new MyApp());
}

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
