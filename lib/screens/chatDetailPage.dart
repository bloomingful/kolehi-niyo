import 'package:flutter/material.dart';
import 'package:flutter_prototype/models/chatMessageModel.dart';

class ChatDetailPage extends StatefulWidget{
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Blooming!", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been lately?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Jisoo, nothing much. Just a bunch of homeworks... hbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, I'm just doing okay ;-;", messageType: "receiver"),
    ChatMessage(messageContent: "Did you see BLACKPINK's latest comeback?", messageType: "receiver"),
    ChatMessage(messageContent: "Not yet ahhhh.... I'll watch it once I finish my reqs", messageType: "sender"),
    ChatMessage(messageContent: "OMG Have you seen it?", messageType: "receiver"),
  ];
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      key: key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://d1o7cxaf8di5ts.cloudfront.net/file/brand/305/blackpink-jisoo-profile-image.jpeg"),
                  maxRadius: 22,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Jisoo Kim",style: TextStyle(color: Colors.white, fontSize: 16 , fontFamily:'Poppins', fontWeight: FontWeight.w500),),
                      SizedBox(height: 1,),
                      Text("Online",style: TextStyle(color: Colors.white, fontSize: 13, fontFamily:'Poppins', fontWeight: FontWeight.w300),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 25,bottom: 10),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                    child: Align(
                      alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: (messages[index].messageType  == "receiver"?Color(0xFFF6F6F6):Color(0xFFF3E1D2)),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15, fontFamily: 'Poppins',),),
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4BB8A),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.add, color: Colors.white, size: 20, ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Write message...",
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      FloatingActionButton(
                        onPressed: (){},
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.send,color: Color(0xFFF4BB8A),size: 25   ,),
                        elevation: 0,
                      ),
                    ],

                  ),
                ),

              ),
            ],
          ),
        ),
      );
  }
}


