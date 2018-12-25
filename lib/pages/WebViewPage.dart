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
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        bottom: new PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: isLoading
                ? LinearProgressIndicator(
                    backgroundColor: Colors.red,
                    valueColor: AlwaysStoppedAnimation(Colors.orange))
                : Divider(
                    height: 1,
                    color: Theme.of(context).primaryColor,
                  )),
      ),
      body: WebviewScaffold(
        url: url,
        withZoom: false,
        withLocalStorage: true,
        withJavascript: true,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    webViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      if (state.type == WebViewState.shouldStart) {
        setState(() {
          isLoading = true;
        });
      } else if (state.type == WebViewState.finishLoad) {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    webViewPlugin.dispose();
  }
}
