import 'package:FlutterWidgets/model/Router.dart';
import 'package:FlutterWidgets/pages/basic/ContainerPage.dart';
import 'package:FlutterWidgets/widgets/RouterListView.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final items = [
    Router('Container', ContainerPage()),
    Router('Row', null),
    Router('Column', null),
    Router('Image', null),
    Router('Text', null),
    Router('Icon', null),
    Router('RaisedButton', null),
    Router('Scaffold', null),
    Router('Appbar', null),
    Router('FlutterLogo', null),
    Router('Placeholder', null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets'),
      ),
      body: RouterListView(items),
    );
  }
}
