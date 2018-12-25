import 'package:FlutterWidgets/model/Router.dart';
import 'package:FlutterWidgets/widgets/WebViewPage.dart';
import 'package:FlutterWidgets/pages/basic/BasicPage.dart';
import 'package:FlutterWidgets/widgets/RouterListView.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final items = [
    Router('Basic Widgets', BasicPage()),
    Router('Material Widgets', null),
    Router('Cupertino Widgets', null),
    Router('Layout', null),
    Router('Assets、Image、Icons', null),
    Router('动画和Motion', null),
    Router('交互模型', null),
    Router('样式', null),
    Router('绘制和效果', null),
    Router('async、await', null),
    Router('滚动', null),
    Router('辅助功能', null),
  ];

  final title = 'Flutter Widgets';
  final url = 'https://github.com/sunfusheng/FlutterWidgets';

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
