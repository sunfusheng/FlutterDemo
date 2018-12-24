import 'package:FlutterWidgets/model/Router.dart';
import 'package:FlutterWidgets/pages/about/WebViewPage.dart';
import 'package:FlutterWidgets/pages/basic/ContainerBoxDecoration.dart';
import 'package:FlutterWidgets/pages/basic/RowColumnFlexExpanded.dart';
import 'package:FlutterWidgets/widgets/RouterListView.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final items = [
    Router('Container, BoxDecoration', ContainerBoxDecoration()),
    Router('Row, column, Flex, Expanded', RowColumnFlexExpanded()),
    Router('Text', null),
    Router('RaisedButton', null),
    Router('Icon', null),
    Router('Image', null),
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
        actions: <Widget>[
          IconButton(
              icon: new Icon(Icons.info),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            WebViewPage('https://www.baidu.com/')));
              })
        ],
      ),
      body: RouterListView(items),
    );
  }
}
