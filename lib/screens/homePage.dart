import 'package:flutter/material.dart';
import 'package:flutter_prototype/screens/classPage.dart';
import 'package:flutter_prototype/screens/clubPage.dart';
import 'package:flutter_prototype/screens/coursePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      key: key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0 ,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/UP_Circle.png', width: 100, height: 100),
            Container(
              padding: EdgeInsets.only(right: 75),
              child: Text(
                "Let's dive in!",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 38.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 190),
              child: Text(
                "Your course",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CoursePage();}
                  ));
                },
                child: Image.asset('assets/your_course.png', width: 300, height: 99)),
            Container(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "Your clubs",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ClubPage();}
                  ));
                },
                child: Image.asset('assets/your_clubs.png', width: 300, height: 99)),
            Container(
              padding: EdgeInsets.only(right: 180),
              child: Text(
                "Your classes",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ClassPage();}
                  ));
                },
                child: Image.asset('assets/your_classes.png', width: 300, height: 99)),
          ],
        ),
      ),
    );
  }
}