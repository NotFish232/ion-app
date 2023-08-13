import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(IonApp());
}

class IonApp extends StatelessWidget {
  final WebViewController _controller;

  IonApp({super.key})
      : _controller = WebViewController()
          ..loadRequest(Uri.parse("https://ion.tjhsst.edu"));


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', home: WebViewWidget(controller: _controller));
  }
}
