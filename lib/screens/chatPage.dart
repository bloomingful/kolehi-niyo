import 'package:flutter/material.dart';
import 'package:flutter_prototype/models/chatUsersModel.dart';
import 'package:flutter_prototype/widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Irene Bae", messageText: "Seriously? That's good.", imageURL: "https://4.bp.blogspot.com/-OkSGouonbgU/WmPVuupdn8I/AAAAAAACHPs/8_y2_Kg7_AAVWoToMTMltM7p14kqn8RWQCLcBGAs/s1600/irene1.jpg"),
    ChatUsers(name: "Jisoo Kim", messageText: "OMG Have you seen it?", imageURL: "https://d1o7cxaf8di5ts.cloudfront.net/file/brand/305/blackpink-jisoo-profile-image.jpeg",),
    ChatUsers(name: "Wonwoo", messageText: "Hey where are you?", imageURL: "https://p.favim.com/orig/2019/02/24/kpop-svt-seventeen-wonwoo-Favim.com-6944562.jpg",),
    ChatUsers(name: "Mingyu Kim", messageText: "Busy! Call me in 20 mins", imageURL: "https://data.kpopreporter.com/data/thumbs/full/3877/750/0/0/0/seventeens-mingyu.png",),
    ChatUsers(name: "Jungwoo", messageText: "Thank you very much for your email!", imageURL: "https://i.pinimg.com/564x/b3/5f/1b/b35f1b154f5ca92dd83a691054dccbb8.jpg",),
    ChatUsers(name: "IU", messageText: "Will update you this evening...", imageURL: "https://i.pinimg.com/564x/87/67/6e/87676ebd0755b5971ddac16040252a2b.jpg",),
    ChatUsers(name: "Sakura", messageText: "Can you please share the file?", imageURL: "https://i.pinimg.com/236x/4a/41/90/4a41900c5b05b16e2fbfb5b808f1229e.jpg",),
    ChatUsers(name: "Jennie Kim", messageText: "How are you?", imageURL: "https://64.media.tumblr.com/f22d41996b020d93e14902991ace8cc4/e79ce54ea56bb041-0c/s640x960/f2bb6438c84c775299686a877001b926163cdab6.jpg",),
  ];
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      key: key,
      appBar: AppBar(
        leading: Icon(
          Icons.message_outlined
        ),
        title: Text("Chat", style: TextStyle(fontFamily:'Poppins',)),
        backgroundColor: Colors.transparent,
        elevation:0 ,
      ),
      body: SingleChildScrollView(
      child: Container(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ListView.separated(
                itemCount: chatUsers.length,
                separatorBuilder: (BuildContext context, int index) => Divider(height: 1, indent:20, endIndent: 20, thickness: 1,),
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                },
              ),
            ),
          ],
        ),
      ),),

      );
  }
}