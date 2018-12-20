import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
