import 'package:flutter/material.dart';

class RowColumnFlexExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row, column, Flex, Expanded'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                margin: EdgeInsets.all(16),
                color: Color(0xFF82B1FF),
                child: Text(
                  'Text1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                margin: EdgeInsets.all(16),
                color: Color(0xFF448AFF),
                child: Text(
                  'Text2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                margin: EdgeInsets.all(16),
                color: Color(0xFF2962FF),
                child: Text(
                  'Text3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text('Hello Flutter & Dart! '),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                margin: EdgeInsets.all(16),
                color: Color(0xFFFF9E80),
                child: Text(
                  'Text1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                margin: EdgeInsets.all(16),
                color: Color(0xFFFF6E40),
                child: Text(
                  'Text2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                margin: EdgeInsets.all(16),
                color: Color(0xFFDD2C00),
                child: Text(
                  'Text3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          InkWell(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.android,
                        color: Colors.lightGreen,
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '孙福生',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Text(
                              'sunfusheng.com',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      )),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Divider(
                    color: Colors.grey,
                    height: 0.5,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
