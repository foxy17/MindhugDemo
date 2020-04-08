import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindhug/Components/google_login.dart';
import 'package:mindhug/screens/route.dart';

Widget signInButton(context) {
  return OutlineButton(
    splashColor: Colors.yellowAccent,
    onPressed: () {
      signInWithGoogle().then((user) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
    });},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    highlightElevation: 0,
    borderSide: BorderSide(color: Colors.black),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                fontSize: ScreenUtil.instance.setSp(20),
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
