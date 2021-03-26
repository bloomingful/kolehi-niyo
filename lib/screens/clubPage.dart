import 'package:flutter/material.dart';
import 'package:flutter_prototype/models/classModel.dart';
import 'package:flutter_prototype/models/clubModel.dart';
import 'package:flutter_prototype/widgets/classList.dart';

void main() {
  runApp(MaterialApp(
      home: ClubPage()
  ));
}

class ClubPage extends StatefulWidget {
  @override
  _ClubPageState createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  List<ClubModel> clubs =[
    ClubModel(clubName:'DSC UP Diliman', mutualClub:'Ashley Go is also in this class.'),
    ClubModel(clubName:'UP Arirang', mutualClub:'Wonwoo and 5 others are also in this class'),
    ClubModel(clubName:'DOST Scholars Organization', mutualClub:'You have 5 friends in this class.'),
    ClubModel(clubName:'UP Cursor', mutualClub:'Meet new friends here!'),
    ClubModel(clubName:'Mathematics Society', mutualClub:'Meet new friends here!'),
  ];
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      key: key,
      appBar: AppBar(
        title: Text("Your clubs", style: TextStyle(fontFamily:'Poppins',)),
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
                child: Text("Clubs/Orgs", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 36.0, color: Color(0xFFF4BB8A))
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left:30),
                  child: ListView.builder(
                    itemCount: clubs.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 16),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return ClassList(
                        className: clubs[index].clubName,
                        mutualClass: clubs[index].mutualClub,
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