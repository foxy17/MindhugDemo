import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindhug/screens/pages/home/seed.dart';
import 'package:mindhug/screens/pages/home/swiper_items.dart';
import 'package:mindhug/screens/pages/home/top_item.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeActivity extends StatefulWidget {
  final  PageController pageController;

  HomeActivity({Key key, @required this.pageController}) : super(key: key);
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  PageController _pageController;
  @override
  void initState() {
    _pageController=widget.pageController;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          topList(_pageController),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: ScreenUtil().setHeight(200),
            width: MediaQuery.of(context).size.width * 0.95,
            child: Card(
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return itemlist[index];
                },
                itemCount: 3,
                pagination: new SwiperPagination(),
                autoplay: true,
                autoplayDelay: 5000,
                duration: 700,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: ScreenUtil().setHeight(350),
            width: MediaQuery.of(context).size.width * 0.95,
            child: Card(
              child: Container(
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
                            color: Colors.deepOrange[600],
                          ),
                          FutureBuilder<FirebaseUser>(
                              future: FirebaseAuth.instance.currentUser(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<FirebaseUser> snapshot) {
                                print(snapshot);
                                if (snapshot.hasData) {
                                  return Text(
                                    "Hey " +
                                        snapshot.data.displayName.split(" ")[0],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(20),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                }

                                return CircularProgressIndicator(
                                  backgroundColor: Colors.pink[300],
                                );
                              }),
                        ],
                      ),
                      Container(
                        height: ScreenUtil().setHeight(230),
                        child: Column(
                          children: <Widget>[
                            sunflower(),
                            Text(
                              "We have a lot of activities you can do today!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(30),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: ScreenUtil().setHeight(250),
            width: MediaQuery.of(context).size.width * 0.95,
            child: Card(
              child: Container(
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
                            "EVENTS near you",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: ScreenUtil().setHeight(180),
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/event1.JPG",
                                      fit: BoxFit.contain,

                                      width: ScreenUtil().setWidth(100),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.50,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "WED, APR 21 5:30 PM",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(15),
                                            color: Colors.black45),
                                      ),
                                      Text(
                                        "Dealing with coronavirus Anxiety",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(20),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/event2.JPG",
                                      fit: BoxFit.contain,

                                      width: ScreenUtil().setWidth(100),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.50,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "FRI, FEB 21 5:30 PM",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(15),
                                            color: Colors.black45),
                                      ),
                                      Text(
                                        "MindHug Moments",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(20),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
