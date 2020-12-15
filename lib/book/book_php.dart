import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class BookPHP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter PDF',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookPHPPage(),
    );
  }
}

class BookPHPPage extends StatefulWidget {
  @override
  _BookPHPPageState createState() => _BookPHPPageState();
}

class _BookPHPPageState extends State<BookPHPPage> {
  String url = "https://norse-posts.000webhostapp.com/Books/PHP.pdf";
  String pdfasset = "assets/sample.pdf";
  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromURL(url);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              document: _doc,
              indicatorBackground: Colors.red,
              // showIndicator: false,
              // showPicker: false,
            ),
    );
  }
}