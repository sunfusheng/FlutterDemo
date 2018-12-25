import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatefulWidget {
  final title;
  final url;

  WebViewPage(this.title, this.url);

  @override
  State<StatefulWidget> createState() {
    return _WebViewPageState(title, url);
  }
}

class _WebViewPageState extends State<WebViewPage> {
  final webViewPlugin = new FlutterWebviewPlugin();
  final title;
  final url;
  bool isLoading = false;

  _WebViewPageState(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    final double loadingViewHeight = 3;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(loadingViewHeight),
          child: Container(
            height: loadingViewHeight,
            child: isLoading
                ? LinearProgressIndicator(
                    backgroundColor: Colors.red,
                    valueColor: AlwaysStoppedAnimation(Colors.orange),
                  )
                : Divider(
                    height: loadingViewHeight,
                    color: Theme.of(context).primaryColor,
                  ),
          ),
        ),
      ),
      body: WebviewScaffold(
        url: url,
        withZoom: false,
        appCacheEnabled: true,
        withLocalStorage: true,
        withJavascript: true,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    webViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      switch (state.type) {
        case WebViewState.shouldStart:
        case WebViewState.startLoad:
          setState(() {
            isLoading = true;
          });
          break;
        case WebViewState.finishLoad:
          setState(() {
            isLoading = false;
          });
          break;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    webViewPlugin.dispose();
  }
}
