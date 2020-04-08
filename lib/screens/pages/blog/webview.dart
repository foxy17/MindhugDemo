import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebViewLoad extends StatefulWidget {
  final  String url,hero;

  WebViewLoad({Key key, @required this.url,this.hero}) : super(key: key);
  WebViewLoadUI createState() => WebViewLoadUI();

}

class WebViewLoadUI extends State<WebViewLoad>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Medium')),
        body: Hero(
          tag: widget.hero,
          child: Container(

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,

            ),
          ),
        )
    );
  }
}