import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('关于'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "GitHub: https: //github.com/sunfusheng\n作者: 孙福生",
            style: TextStyle(fontSize: 15),
          ),
        ));
  }
}
