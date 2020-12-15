import 'package:flutter/material.dart';
import 'dart:convert';
import 'about_java.dart';

class Java extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.grey,
              iconSize: 35,
              onPressed: () {
                // Navigator.push(
                Navigator.pop(context, true);
                //  context,
                //  MaterialPageRoute(builder: (context) => Nav()),
                // );
              }),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Java Programming',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.code),
                    iconSize: 35,
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            preferredSize: Size(0.0, 80.0),
          ),
        ),
        body: Center(
          child: FutureBuilder(
            builder: (context, snapshot) {
              var showData = json.decode(snapshot.data);
              return ListView.builder(
                itemCount: showData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    margin: new EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => About(showData[index])),
                        );
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(showData[index]['picture']),
                        ),
                        title: Text(showData[index]['name']),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                },
              );
            },
            future:
                DefaultAssetBundle.of(context).loadString("assets/data.json"),
          ),
        ),
      ),
    );
  }
}

class User {
  String picture;
  String name;
  String bio;

  User({this.picture, this.name, this.bio});

  factory User.fromJson(Map<String, dynamic> json) {
    return new User(
      picture: json['picture'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String,
    );
  }
}

class UserList {
  List<User> users;

  UserList({this.users});
}
