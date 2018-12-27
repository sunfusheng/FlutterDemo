import 'package:FlutterWidgets/model/Router.dart';
import 'package:FlutterWidgets/pages/basic/TextRichText.dart';
import 'package:FlutterWidgets/widgets/WebViewPage.dart';
import 'package:FlutterWidgets/pages/basic/ContainerBoxDecoration.dart';
import 'package:FlutterWidgets/pages/basic/RowColumnFlexExpanded.dart';
import 'package:FlutterWidgets/widgets/RouterListView.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final items = [
    Router('Container, BoxDecoration', ContainerBoxDecoration()),
    Router('Row, column, Flex, Expanded', RowColumnFlexExpanded()),
    Router('Text, RichText', TextRichText()),
    Router('RaisedButton', null),
    Router('Icon', null),
    Router('Image', null),
    Router('Scaffold', null),
    Router('Appbar', null),
    Router('FlutterLogo', null),
    Router('Placeholder', null),
  ];

  final title = 'Basic Widgets';
  final url =
      'https://github.com/sunfusheng/FlutterWidgets/tree/master/lib/pages/basic/BasicPage.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
              icon: new Icon(Icons.info),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewPage(title, url),
                  ),
                );
              })
        ],
      ),
      body: RouterListView(items),
    );
  }
}
