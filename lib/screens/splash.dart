import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mindhug/screens/route.dart';
import 'on_boarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoggedIn = false;
  FirebaseUser _user;
   startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  navigationPage() async {
    if (isLoggedIn)
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
      );
    else
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => Intro(),
        ),
      );// Route to Intro Screen
  }

  @override
  void initState() {
    FirebaseAuth.instance.currentUser().then((user) => user != null
        ? setState(() {
          _user=user;
           isLoggedIn = true;
    })
        : null);

    super.initState();
    startTime();

  }

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 411.42857142857144;
    double defaultScreenHeight = 891.4285714285714;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: new Column(
            children: <Widget>[
              SizedBox(
                height: ScreenUtil().setHeight(150.0),
              ),
              Image.asset(
                "assets/splash.png",
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setHeight(350),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'We are doing amazing things for mental wellbeing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(30.0),
                    color: Color(0xFF40E0D0),
                    fontFamily: 'Montserrat-Medium',
                    inherit: false,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(100.0),
              ),
              Container(
                child: Text(
                  "\u00a9 MindHug   ",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(15.0),
                    color: Colors.black,
                    fontFamily: 'Montserrat-Medium',
                    inherit: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
