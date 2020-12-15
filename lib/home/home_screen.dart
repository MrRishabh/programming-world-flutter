import '../java/java.dart';
import 'package:flutter/material.dart';
import '../php/php.dart';
import '../react/react.dart';
import '../flutter/flutter.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import '../constant/constant.dart';
import '../js/js.dart';
import '../c/c.dart';
import '../c_plus_plus/c++.dart';
import '../python/python.dart';
import '../mysql/mysql.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programming World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'lol',
        textTheme: textTheme,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final List<String> titles = [
  "JAVA", //0
  "FLUTTER", //1
  "PHP", //2
  "REACT", //3
  "JS", //4
  "C", //5
  "C++", //6
  "PYTHON", //7
  "MySQL", //8
];

final List<Widget> images = [
  Hero(
    tag: "JAVA",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/xxx.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "FLUTTER",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/flutter1.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "PHP",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/matr.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "REACT",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/react.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "JS",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/jss.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "C",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/c.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "C++",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/c-1.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "PYTHON",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/python.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "MySQL",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/mysql.gif",
        fit: BoxFit.cover,
      ),
    ),
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            /*     Container(
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Center(
                    child: Image.network(
                  "images/logo.png",
                  fit: BoxFit.cover,
                )),
              ),
            ),*/
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  // textStyle: TextStyle(color : Colors.red),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {
                    // print(page);
                  },
                  onSelectedItem: (index) {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Java()),
                      );
                    }
                    if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new Flutterdata()),
                      );
                    }
                    if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new PHP()),
                      );
                    }
                    if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new React()),
                      );
                    }
                    if (index == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new Javascript()),
                      );
                    }
                    if (index == 5) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Cdata()),
                      );
                    }
                    if (index == 6) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Cplus()),
                      );
                    }
                    if (index == 7) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Python()),
                      );
                    }
                    if (index == 8) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new Mysql()),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
