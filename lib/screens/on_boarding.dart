import 'package:flutter/material.dart';
import 'package:mindhug/components/onboarding_data.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:mindhug/screens/login.dart';
class Intro extends StatefulWidget {
  Intro({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => LoginScreen(),
            ),
          );
        },
        finishCallback: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => LoginScreen(),
            ),
          );
        },
      ),
    );
  }

 
}