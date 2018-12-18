import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        primaryColorLight: Colors.white,
        accentColor: Colors.white,
      ),
      home: new MainPageWidget(),
    );
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
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
        title: new Text('To Learn Flutter.'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.info), onPressed: _gotoAboutPage)
        ],
      ),
      body: _buildListView(context),
    );
  }

  void _gotoAboutPage() {}

  Widget _buildListView(BuildContext context) {
    return new ListView.separated(
        itemCount: _dataSource.length,
        itemBuilder: (context, position) {
          return _buildRow(context, _dataSource[position]);
        },
        separatorBuilder: (context, position) {
          return new Divider(
            height: 0.5,
            indent: 16,
          );
        });
  }

  Widget _buildRow(BuildContext context, String text) {
    return new InkWell(
      onTap: () {
        Scaffold.of(context)..showSnackBar(SnackBar(content: Text(text)));
      },
      child: new Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          text,
          style: _textStyle,
        ),
      ),
    );
  }
}
