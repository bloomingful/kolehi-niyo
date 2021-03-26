import 'package:flutter/material.dart';
import 'package:flutter_prototype/feed.dart';
import 'package:flutter_prototype/screens/chatPage.dart';
import 'package:flutter_prototype/screens/coursePage.dart';
import 'package:flutter_prototype/screens/homePage.dart';
import 'package:flutter_prototype/settings.dart';
import 'package:flutter_prototype/userprofile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyBottomNavBar()
    );
  }
}

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    FeedPage(),
    ChatPage(),
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF393B63),
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.article),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
