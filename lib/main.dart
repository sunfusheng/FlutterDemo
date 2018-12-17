import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Random Words Generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        primaryColorLight: Colors.white,
        accentColor: Colors.white,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _dataSource = <String>[];
  final _textStyle = const TextStyle(fontSize: 18);

  @override
  void initState() {
    super.initState();
    _dataSource.add('基础组件');
    _dataSource.add('Material Components');
    _dataSource.add('Cupertino(iOS风格的widget)');
    _dataSource.add('Layout');
    _dataSource.add('Assets、图片、Icons');
    _dataSource.add('动画和Motion');
    _dataSource.add('交互模型');
    _dataSource.add('样式');
    _dataSource.add('绘制和效果');
    _dataSource.add('Async');
    _dataSource.add('滚动');
    _dataSource.add('辅助功能');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Study'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.info), onPressed: _gotoAboutPage)
        ],
      ),
      body: _buildListView(),
    );
  }

  void _gotoAboutPage() {}

  Widget _buildListView() {
    return new ListView.builder(
        itemCount: _dataSource.length,
        itemBuilder: (context, i) {
          return _buildRow(_dataSource[i]);
        });
  }

  Widget _buildRow(String text) {
    return new GestureDetector(
      onTap: () {

      },
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                text,
                style: _textStyle,
              ),
            ),
            Divider(
              height: 1,
            ),
          ]),
    );
  }
}
