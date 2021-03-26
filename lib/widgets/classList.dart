import 'package:flutter/material.dart';
import "dart:math";

class ClassList extends StatefulWidget{
  String className;
  String mutualClass;

  ClassList({@required this.className, @required this.mutualClass});
  @override
  _ClassListState createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  List colors =[Color(0xFF66ADD9), Color(0xFFFB96A4), Color(0xFFFFC966), Color(0xFF8AE7B4), Color(0xFFFF974C), Color(0xFFC6AAF3), Color(0xFFFF5F5F), Color(0xFFA4DFD8)];
  final _random = new Random();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 40, 5),
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 12.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)),
                color: colors[_random.nextInt(colors.length)],
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 8,),
                Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 12,),
                      Text(widget.className, style: TextStyle(fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.w600,),),
                      SizedBox(height: 1,),
                      Text(widget.mutualClass,style: TextStyle(fontSize: 11, fontFamily: 'Poppins',color: Colors.grey.shade600, fontWeight: FontWeight.w300),),
                      SizedBox(height: 6,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}