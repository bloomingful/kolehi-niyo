import 'package:flutter/material.dart';
import 'package:flutter_prototype/models/classModel.dart';
import 'package:flutter_prototype/widgets/classList.dart';

void main() {
  runApp(MaterialApp(
      home: ClassPage()
  ));
}

class ClassPage extends StatefulWidget {
  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  List<ClassModel> classes =[
    ClassModel(className:'Math 21-B', mutualClass:'Ray Alba is also in this class.'),
    ClassModel(className:'ENLIT 23-P12', mutualClass:'You have 10 friends in this class.'),
    ClassModel(className:'SCIENCE 23', mutualClass:'You have 2 friends in this class.'),
    ClassModel(className:'CS 31-TWFX1', mutualClass:'Irene Bae and Jisoo Kim are also in this class.'),
    ClassModel(className:'CS 12-TWFH2', mutualClass:'Meet new friends here!'),
  ];
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      key: key,
      appBar: AppBar(
        title: Text("Your classes", style: TextStyle(fontFamily:'Poppins',)),
        backgroundColor: Color(0xFF393B63),
        elevation:0 ,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30,70,0,0),
                child: Text("Classes", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 36.0, color: Color(0xFFF4BB8A))
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left:30),
                  child: ListView.builder(
                    itemCount: classes.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 16),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return ClassList(
                        className: classes[index].className,
                        mutualClass: classes[index].mutualClass,
                      );
                    },
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}