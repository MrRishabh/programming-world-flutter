import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'home/home_screen.dart';
import 'views/chatrooms.dart';


class Updates extends StatefulWidget {
  @override
  _UpdatesState createState() => new _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: AfterSplash(),
      image: new Image.asset(
        'assets/images/icon.png',
        width: 100,
        height: 100,
      ),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: Colors.blue[700],
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _UpdatessState createState() => _UpdatessState();
}

class _UpdatessState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: WebviewScaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 40,
        ),
      ),
      // Enter your custom url
      url: "https://pw.findjobalerts.com/updates/",
      withJavascript: true,
      withLocalStorage: true,
      enableAppScheme: true,
      primary: true,
      supportMultipleWindows: true,
      allowFileURLs: true,
      withLocalUrl: true,
      scrollBar: true,
      appCacheEnabled: true,
    ));
  }
  Future<bool> _onBackPressed() {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => ChatRoom()),);
  }
}