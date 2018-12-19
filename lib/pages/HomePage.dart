import 'package:flutter/material.dart';
import 'package:FlutterWidgets/pages/AboutPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State {
  final items = [
    'Basic Widgets',
    'Material Widgets',
    'Cupertino Widgets',
    'Layout',
    'Assets、Image、Icons',
    '动画和Motion',
    '交互模型',
    '样式',
    '绘制和效果',
    'async、await',
    '滚动',
    '辅助功能',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.info), onPressed: _gotoAboutPage)
        ],
      ),
      body: _buildListView(context),
    );
  }

  void _gotoAboutPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AboutPage()));
  }

  Widget _buildListView(BuildContext context) {
    return ListView.separated(
        itemCount: items != null ? items.length : 0,
        itemBuilder: (context, index) {
          return _buildRow(context, items[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0.5,
            indent: 16,
          );
        });
  }

  Widget _buildRow(BuildContext context, String text) {
    return InkWell(
      onTap: () {
        Scaffold.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(text)));
      },
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
