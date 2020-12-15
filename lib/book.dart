import './book/book_c.dart';
import './book/book_cplusplus.dart';
import './book/book_flutter.dart';
import './book/book_js.dart';
import './book/book_mysql.dart';
import './book/book_php.dart';
import './book/book_python.dart';
import './book/book_react.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import './constant/constant.dart';
import './book/book_java.dart';

class Book extends StatelessWidget {
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
      home: BookPage(),
    );
  }
}

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

final List<String> titles = [
  "", //0
  "", //1
  "", //2
  "", //3
  "", //4
  "", //5
  "", //6
  "", //7
  "", //0
];

final List<Widget> images = [
  Hero(
    tag: "JAVA",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_java.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "FLUTTER",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_flutter.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "PHP",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_php.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "REACT",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_react.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "JS",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_js.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "C",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_c.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "C++",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "images/https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_cplusplus.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "PYTHON",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_python.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "MySQL",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://pw.findjobalerts.com/wp-content/uploads/2020/09/book_mysql.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
];

class _BookPageState extends State<BookPage> {
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
                        MaterialPageRoute(builder: (context) => new BookJava()),
                      );
                    }
                    if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new BookFlutter()),
                      );
                    }
                    if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new BookPHP()),
                      );
                    }
                    if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new BookReact()),
                      );
                    }
                    if (index == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new BookJS()),
                      );
                    }
                    if (index == 5) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new BookC()),
                      );
                    }
                    if (index == 6) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new BookCplusplus()),
                      );
                    }
                    if (index == 7) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new BookPython()),
                      );
                    }
                    if (index == 8) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new BookMySQL()),
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
