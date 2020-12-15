import './helper/authenticate.dart';
import './helper/helperfunctions.dart';
import './views/chatrooms.dart';
import 'package:flutter/material.dart';

class After extends StatefulWidget {
  // This widget is the root of your application.
  @override
  AfterState createState() => AfterState();
}

class AfterState extends State<After> {
  bool userIsLoggedIn;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        userIsLoggedIn = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programming World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff145C9E),
        // scaffoldBackgroundColor: Color(0xff000000),
        accentColor: Color(0xff007EF4),
        //fontFamily: "OverpassRegular",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: userIsLoggedIn != null
          ? userIsLoggedIn ? ChatRoom() : Authenticate()
          : Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/logo.png"), fit: BoxFit.fill)),
              child: Center(
                child: Authenticate(),
              ),
            ),
    );
  }
}
