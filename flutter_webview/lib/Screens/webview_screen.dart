import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      hidden: true,
      withZoom: true,
      appBar: AppBar(
        title: Text('WebView'),
      ),
      url: "https://web.whatsapp.com/",
    );
    // return Scaffold(
    //   appBar: AppBar(title: Text('WebView'),),
    //   body: const WebView(
    //     javascriptMode: JavascriptMode.unrestricted,
    //     initialUrl: 'https://web.whatsapp.com/',
    //  ),
    // );
  }
}
