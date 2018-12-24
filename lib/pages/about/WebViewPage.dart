import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatefulWidget {
  final url;

  WebViewPage(this.url);

  @override
  State<StatefulWidget> createState() {
    return _WebViewPageState(url);
  }
}

class _WebViewPageState extends State<WebViewPage> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  final url;
  String title = '加载中...';

  _WebViewPageState(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebviewScaffold(url: url),
    );
  }

  @override
  void initState() {
    super.initState();
    flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      switch (state.type) {
        case WebViewState.shouldStart:
          setState(() {
            title = '加载中...';
          });
          break;
        case WebViewState.startLoad:
          break;
        case WebViewState.finishLoad:
          setState(() {
            title = '加载完成';
          });
          break;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
