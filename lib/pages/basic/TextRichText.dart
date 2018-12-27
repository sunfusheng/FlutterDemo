import 'package:FlutterWidgets/widgets/WebViewPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextRichText extends StatelessWidget {
  final title = 'Text, RichText';
  final url =
      'https://github.com/sunfusheng/FlutterWidgets/tree/master/lib/pages/basic/TextRichText.dart';

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
                  child: Text(
                    'This is a default text.',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'This is a special text.',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'This is a long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long text.',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'This is a text with underline.',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'This is a text with lineThrough.',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'This is a text with overline.',
                    style: TextStyle(
                      decoration: TextDecoration.overline,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'This is a text with underline & dashed style.',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: 'This is a ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'clickable rich text',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Scaffold.of(context)
                                ..removeCurrentSnackBar()
                                ..showSnackBar(new SnackBar(
                                    content: new Text("Yeah, it's clickable.")));
                            },
                        ),
                        TextSpan(
                          text: ' !!! ',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '我是华文行楷字体',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'huawenxingkai',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '我是方正简体字体',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'fangzhengjianti',
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: RotatedBox(
                        quarterTurns: 0,
                        child: Text(
                          '水平',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '顺时针90°翻转',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Text(
                          '顺时针180°翻转',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      alignment: Alignment.centerLeft,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          '顺时针270°翻转',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
