import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  openBrowserTab() async {
    await FlutterWebBrowser.openWebPage(
        url: "https://app.infinityforms.work/app/form?id=5&b=0",
        androidToolbarColor: Colors.deepPurple);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: openBrowserTab(),
    );
  }
}
