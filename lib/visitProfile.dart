import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MaterialApp(
    home: VisitProfilePage()
  ));
}

class VisitProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
            "Profile",
            style: TextStyle(
              fontFamily: "Poppins",
            ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
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
              Image(
                image: AssetImage('assets/irene.png'),
              ),
              Divider(
                  height: 10.0,
                  color: Colors.grey[600]
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                  "Irene Bae, 29",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600
                  )
              ),
              Text(
                  "1st year college, BS Computer Science",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.grey[900],
                      fontSize: 16.0,
                  )
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                  "Location",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                  )
              ),
              Text(
                  "Daegu, South Korea",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.grey[900],
                      fontSize: 16.0,
                  )
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                  "About",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                  )
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                  "My hobbies are dancing, cooking seaweed soup for Red Velvet's members’ birthdays. I don't eat chicken. When I was young, I fell sick after eating chicken. So, I don’t eat it.",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.grey[900],
                      height: 1.2,
                      fontSize: 16.0,
                  )
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        marginEnd: 18,
        marginBottom: 20,
        icon: Icons.contact_page,
        activeIcon: Icons.remove,
        buttonSize: 56.0,
        visible: true,
        closeManually: false,
        renderOverlay: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print(''),
        onClose: () => print(''),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Color(0xFFF4BB8A),
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: CircleBorder(),
        // orientation: SpeedDialOrientation.Up,
        // childMarginBottom: 2,
        // childMarginTop: 2,
        children: [
          SpeedDialChild(
            child: Icon(
                Icons.touch_app,
                color: Colors.grey[700]
            ),
            backgroundColor: Colors.grey[200],
            label: 'Follow',
            labelStyle: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            onTap: () => print(''),
            onLongPress: () => print(''),
          ),
          SpeedDialChild(
            child: Icon(
                Icons.message,
                color: Colors.grey[700]
            ),
            backgroundColor: Colors.grey[200],
            label: 'Message',
            labelStyle: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            onTap: () => print(''),
            onLongPress: () => print(''),
          ),
        ],
      ),
    );
  }
}

