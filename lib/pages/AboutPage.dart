import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutPageState();
  }
}

class _AboutPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('关于'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text('作者：孙福生'),
        ));
  }
}
