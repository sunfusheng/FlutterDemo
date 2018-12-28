import 'package:FlutterWidgets/widgets/WebViewPage.dart';
import 'package:flutter/material.dart';

class RaisedButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<RaisedButtonPage> {
  final title = 'RaisedButton';
  final url =
      'https://github.com/sunfusheng/FlutterWidgets/tree/master/lib/pages/basic/RaisedButtonPage.dart';

  bool isDisabled = false;

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
      body: Builder(
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        isDisabled = !isDisabled;
                      });
                    },
                    child: Text('默认按钮'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: RaisedButton(
                    onPressed: isDisabled ? null : () {},
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        isDisabled ? '不可点按钮' : '可点击按钮',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    textColor: Colors.white,
                    disabledTextColor: Colors.white70,
                    elevation: 3,
                    disabledElevation: 0,
                    highlightElevation: 3,
                    color: Colors.orange,
                    splashColor: Colors.red,
                    highlightColor: Color(0xFFFFB74D),
                    disabledColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        '带边框按钮',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    textColor: Colors.orange,
                    disabledTextColor: Colors.white70,
                    elevation: 0,
                    disabledElevation: 0,
                    highlightElevation: 0,
                    color: Colors.white,
                    highlightColor: Color(0xFFFFCC80),
                    disabledColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
