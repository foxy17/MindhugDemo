import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:mindhug/screens/pages/blog/blog.dart';
import 'package:mindhug/screens/pages/home/home.dart';
import 'package:flutter/services.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(



        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              HomeActivity(pageController:_pageController),
              BlogScreen(),
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home),
                activeColor: Colors.pink,
                inactiveColor:Colors.black
            ),
            BottomNavyBarItem(
                title: Text('Blogs'),
                icon: Icon(Icons.chat_bubble),
                activeColor: Colors.pink,
                inactiveColor:Colors.black
            ),
            BottomNavyBarItem(
                title: Text('Events'),
                icon: Icon(Icons.apps),
                activeColor: Colors.pink,
                inactiveColor:Colors.black
            ),
            BottomNavyBarItem(
                title: Text('Diary'),
                icon: Icon(Icons.library_books),
                activeColor: Colors.pink,
                inactiveColor:Colors.black
            ),

            BottomNavyBarItem(
                title: Text('Profile'),
                icon: Icon(Icons.settings),
                activeColor: Colors.pink,
                inactiveColor:Colors.black
            ),
          ],
        ),
      ),
    );
  }
}