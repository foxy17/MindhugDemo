import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:mindhug/Components/googleButton.dart';
import 'package:mindhug/components/facebookButton.dart';
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(width: 2.0, color: Color(0xFFFFFFFF)),
  );
}

class LoginScreen extends StatefulWidget {
  bool first = false;
  LoginScreen({Key key, this.first}) : super(key: key);
  @override

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double _height;
  double _width;
 

  @override
  void initState() {

//    FirebaseAuth.instance.currentUser().then((user) => user != null
//        ? setState(() {
//      isLoggedIn = true;
//    })
//        : null);
    super.initState();

    //Checks if splash screen need to be showed first time
//    if (widget.first == true) {
//      _visible = false;
//    } else
//      startTime();
  }

  @override
  Widget build(BuildContext context) {

    _height=ScreenUtil.instance.setHeight(850);
    _width=ScreenUtil.instance.setWidth(411);
    return Scaffold(
      backgroundColor: Color(0xFFB0E5FF),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: ScreenUtil.instance.setHeight(100),
                ),

                Image.asset(
                  "assets/login.png",
                  width: ScreenUtil.instance.setWidth(350),
                  height: ScreenUtil.instance.setHeight(350),
                ),
                Container(
                  child: Padding(
                    padding:
                    EdgeInsets.all(ScreenUtil.instance.height / 26),
                    child: Column(
                      children: <Widget>[
                        signInButton(context),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(20),
                        ),
                        signInButtonFb(context),

                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Interesed in working with us?",
                                style: TextStyle(
                                  fontSize: ScreenUtil.instance.setSp(14.0),
                                  color: Colors.black,
                                  inherit: false,
                                ),
                              ),
                              Text(
                                "Email at hello@mindhug.io",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: ScreenUtil.instance.setSp(14.0),
                                  color: Colors.black,
                                  inherit: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
