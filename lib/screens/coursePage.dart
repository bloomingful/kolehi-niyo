import 'package:flutter/material.dart';
import 'package:flutter_prototype/feed.dart';
import 'package:flutter_prototype/models/courseModel.dart';
import 'package:flutter_prototype/visitProfile.dart';

void main() {
  runApp(MaterialApp(
      home: CoursePage()
  ));
}

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];
  void getPostsData() {
    List<dynamic> responseList = USER_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
            ],
            image: DecorationImage(
              image: NetworkImage(post["bg"]),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 10, 30),
                  child: FlatButton(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(post["image"]),
                      maxRadius: 30,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return VisitProfilePage();}
                      ));
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      post["name"],
                      style: const TextStyle(fontSize: 22, fontFamily:'Poppins', fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    Text(
                      post["location"],
                      style: const TextStyle(fontSize: 12, fontFamily:'Poppins', color: Colors.white),
                    ),
                    Text(
                      post["friends"],
                      style: const TextStyle(fontSize: 10, fontFamily:'Poppins', fontWeight: FontWeight.w300, color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {

      double value = controller.offset/119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF393B63),
        key: key,
        appBar: AppBar(
          title: Text("Your course", style: TextStyle(fontFamily:'Poppins',)),
          backgroundColor: Color(0xFF393B63),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )
          ),
          height:size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left:25),
                child: Text(
                  "Course:",
                  style: TextStyle(color: Color(0xFFABAAAF), fontWeight: FontWeight.w300, fontSize: 18, fontFamily: 'Poppins'),
                ),),
              Container(
                padding: EdgeInsets.only(left:25),
                child: Text(
                  "1st Year - BS Computer Science",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22, fontFamily: 'Poppins'),
                ),),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform:  Matrix4.identity()..scale(scale,scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}