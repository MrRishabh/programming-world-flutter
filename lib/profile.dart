import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
  
}

class _ProfileState extends State<Profile> {
  String url = "https://pw.findjobalerts.com/";
  
  

  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  StreamSubscription<WebViewStateChanged> _onchanged;
   // here we checked the url state if it loaded or start Load or abort Load

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onchanged = flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      if (mounted) {
        if(state.type== WebViewState.finishLoad){ // if the full website page loaded
          print("loaded...");
          
        }else if (state.type== WebViewState.abortLoad){ // if there is a problem with loading the url
          print("there is a problem...");
        } else if(state.type== WebViewState.startLoad){ // if the url started loading
          print("start loading...");
        }
      }
    });



  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    flutterWebviewPlugin.dispose(); // disposing the webview widget to avoid any leaks
  }



  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      withJavascript: true, // run javascript
      withZoom: false, // if you want the user zoom-in and zoom-out
      hidden: true , 
     // appCacheEnabled: true,
      // put it true if you want to show CircularProgressIndicator while waiting for the page to load

        appBar: AppBar(
        //title: Text("Coding Materials"),
        centerTitle: false,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.white),
          actions: <Widget>[
            
            Container(
              padding: const EdgeInsets.all(0.0),
              width: 50.0,
              alignment: Alignment.centerLeft,
              child: InkWell(
              child: Icon(Icons.refresh, 
              size: 30,
              ),
              onTap: (){
                flutterWebviewPlugin.reload();
              },
            ),),
            Container(
              padding: const EdgeInsets.all(0.0),
              width: 50.0,
            child: InkWell(
              child: Icon(Icons.arrow_back,
              size: 30,
              ),
              onTap: (){
                flutterWebviewPlugin.goBack(); // for going back
              },
            ),),
            Container(
              padding: const EdgeInsets.all(0.0),
              width: 50.0,
            child:InkWell(
              child: Icon(Icons.arrow_forward,
              size: 30,
              ),
              onTap: (){
                flutterWebviewPlugin.goForward(); // for going forward
              },
            ),),

          ],// make the icons colors inside appbar with white color

      ),


    initialChild: Container( // but if you want to add your own waiting widget just add InitialChild
        color: Colors.white,
        child: const Center(
        child: Text('Please Wait...or Tap Reload'),
    ),)


    );
  }
}