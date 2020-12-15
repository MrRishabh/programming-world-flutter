import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class ForgotPassword extends StatelessWidget {
  TextEditingController editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Forgot password"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             new Container(
                        width:200.0,
                        height: 200.0,
                        decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                         image: new DecorationImage(
                          fit: BoxFit.fill,
                           image: new AssetImage('images/logo.png')
                            )
                          )),
                          SizedBox(
                        height: 50,
                      ),
            TextField(
              controller: editController,
              decoration: InputDecoration(
                //  focusColor: Colors.white,
                // hoverColor: Colors.white,

                labelText: "Email",
                hintText: "Enter Email",
                hintStyle: TextStyle(
                  color: Colors.white,
                  //fontStyle: FontStyle.italic,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  resetPassword(context);
                },
                child: Text(
                  "Reset password",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void resetPassword(BuildContext context) async {
    if (editController.text.length == 0 || !editController.text.contains("@")) {
      Fluttertoast.showToast(msg: "Enter valid email");
      return;
    }

    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: editController.text);
    Fluttertoast.showToast(
        msg:
            "Reset password link has sent your mail please use it to change the password.");
    Navigator.pop(context);
  }
}
