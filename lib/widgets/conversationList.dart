import 'package:flutter/material.dart';
import 'package:flutter_prototype/screens/chatDetailPage.dart';

class ConversationList extends StatefulWidget{
  String name;
  String messageText;
  String imageUrl;
  bool isMessageRead;
  ConversationList({@required this.name,@required this.messageText,@required this.imageUrl,@required this.isMessageRead});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ChatDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.name, style: TextStyle(fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w600,),),
                          SizedBox(height: 6,),
                          Text(widget.messageText,style: TextStyle(fontSize: 13, fontFamily: 'Poppins',color: Colors.grey.shade600, fontWeight: widget.isMessageRead?FontWeight.w600:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Icon(Icons.lens_rounded, size:14.0, color: widget.isMessageRead?Color(0xFFF4BB8A):Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}