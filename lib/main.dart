import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'aftersplash.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.white,
      loaderColor: Colors.blue,
      image: Image.asset('images/logo.png'),
      photoSize: 70.0,
      navigateAfterSeconds: After(),
    );
  }
}
