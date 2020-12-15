import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AboutJS extends StatelessWidget {
  final showData;
  AboutJS(this.showData);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xffffffff),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.grey,
              iconSize: 35,
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ),
          body: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Container(
                  //  margin: EdgeInsets.only(bottom: 01),
                  child: ListView(
                    //semanticContainer: true,
                    // child: Padding(
                    //  padding: const EdgeInsets.all(30.0),
                    // child: new Column(
                    //    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            showData['name'],
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            showData['bio'],
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //  elevation: 5,
              ),
              //   ),
              //    ),
              Container(
                width: 100,
                height: 100,
                decoration:
                    ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: DecoratedBox(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              showData['picture'],
                            ))),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
