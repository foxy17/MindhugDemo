import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var itemlist = [

  Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 5,
                width: ScreenUtil().setWidth(15),
                color: Colors.teal[300],
              ),
              Text(
                "Credibility",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.loyalty,
                size: ScreenUtil().setSp(80),
              ),
              Container(
                width: ScreenUtil().setWidth(200),
                child: Container(
                  child: Text(
                    "We take the quality and credibility of our services and offerings very seriously.",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
  Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 5,
                width: ScreenUtil().setWidth(15),
                color: Color(0xFFF50057),
              ),
              Text(
                "Safety",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.person_pin,
                size: ScreenUtil().setSp(80),
              ),
              Container(
                width: ScreenUtil().setWidth(200),
                child: Container(
                  child: Text(
                    "The safety and wellbeing of everyone on the platform is our number one priority.",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
  Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 5,
                width: ScreenUtil().setWidth(15),
                color: Color(0xFF536DFE),
              ),
              Text(
                "Privacy",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.security,
                size: ScreenUtil().setSp(80),
              ),
              Container(
                width: ScreenUtil().setWidth(200),
                child: Container(
                  child: Text(
                    "You control your data and decide if, when and with whom you want to share it.",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),

];
