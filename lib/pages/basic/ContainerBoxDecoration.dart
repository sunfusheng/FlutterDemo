import 'package:FlutterWidgets/pages/WebViewPage.dart';
import 'package:flutter/material.dart';

class ContainerBoxDecoration extends StatelessWidget {
  final title = 'Container, BoxDecoration';
  final url =
      'https://github.com/sunfusheng/FlutterWidgets/tree/master/lib/pages/basic/ContainerBoxDecoration.dart';

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
        // ignore: argument_type_not_assignable
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(32),
                  constraints: BoxConstraints(minWidth: 300, maxHeight: 150),
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16),
                    color: Colors.red,
                    child: Text(
                      'Text',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16),
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Text('Container click ?'),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 50,
                  child: OutlineButton(
                    disabledTextColor: Colors.grey,
                    disabledBorderColor: Colors.grey,
                    highlightedBorderColor: Color(0x80FF9800),
                    borderSide: new BorderSide(color: Colors.orange, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: new Text('OutlineButton click !'),
                    ),
                    onPressed: () {
                      Scaffold.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text('clicked !')));
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16),
                  height: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFFFEBEE), Color(0xFFB71C1C)]),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Text(
                    'LinearGradient',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16),
                  height: 50,
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE65100), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFE65100), Color(0xFFFFF3E0)]),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Text(
                    'LinearGradient',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16),
//                  transform: Matrix4.rotationZ(0.5),
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545403222534&di=8ec74c992b75067da561407b9028a2c3&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201707%2F27%2F20170727144839_RLvsJ.gif')),
                      border: Border.all(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
