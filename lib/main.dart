import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mindhug/screens/splash.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindhug',
      home: SplashScreen(),
    );
  }
}
