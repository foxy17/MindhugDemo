import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindhug/screens/pages/blog/webview.dart';

import 'list.dart';

class BlogScreen extends StatefulWidget {
  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: blog_list.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return WebViewLoad(url:blog_list[index].link,hero:"${index}");
              },
            )),
            child: Hero(
              tag: "$index",
              child: Container(

                height: ScreenUtil().setHeight(300),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      child: Image.network(
                        blog_list[index].image,
                        fit: BoxFit.contain,
                        height: ScreenUtil().setWidth(200),
                        width: ScreenUtil().setWidth(500),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${blog_list[index].title}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(20),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Author : ${blog_list[index].author}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: ScreenUtil().setSp(15),
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),

                  ],
                )),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Divider(
            thickness: 2,
          ),
        ),
      ),
    );
  }
}
