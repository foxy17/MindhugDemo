import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget topList(PageController _pageController){
  return Container(
    margin: EdgeInsets.fromLTRB(20, 20, 0, 30),
    height: ScreenUtil().setHeight(50),
    child: ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
          decoration: new BoxDecoration(
              color: const Color(0xFF536DFE),
              borderRadius: new BorderRadius.all(Radius.circular(5.0))),
          width: ScreenUtil().setWidth(120),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.healing,
                  color: Colors.white,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("BOOK",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(15)),),
                    Text("Therapist",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(14)),)
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
          decoration: new BoxDecoration(
              color: Colors.amber[400],
              borderRadius: new BorderRadius.all(Radius.circular(5.0))),
          width: ScreenUtil().setWidth(120),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.room,
                  color: Colors.white,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Events",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(15)),),
                    Text("near me",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(14)),)
                  ],
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: ()=>_pageController.jumpToPage(1),
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            decoration: new BoxDecoration(
                color: Colors.pink[300],
                borderRadius: new BorderRadius.all(Radius.circular(5.0))),
            width: ScreenUtil().setWidth(120),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.laptop_chromebook,
                    color: Colors.white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("BLOG",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(15)),),
                      Text("research",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(14)),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
          decoration: new BoxDecoration(
              color: Colors.teal[300],
              borderRadius: new BorderRadius.all(Radius.circular(5.0))),
          width: ScreenUtil().setWidth(120),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("THERAPIST",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(15)),),
                    Text("partners",style: TextStyle(color: Colors.white,fontSize: ScreenUtil().setSp(14)),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}