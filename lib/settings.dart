import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: SettingsPage()
  ));
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      appBar: AppBar(
        leading: Icon(
            Icons.settings_outlined
        ),
        title: Text(
          "Settings",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20.0
          ),
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
              Row(
                children: <Widget>[
                  Icon(
                    Icons.perm_identity_outlined,
                    color: Color(0xFFF4BB8A),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ],
              ),
              Divider(
                height: 10.0,
                thickness: 1.2,
                color: Colors.grey[400]
              ),
              SizedBox(
                height: 16.0
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Edit account settings",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.grey[800],
                      fontSize: 16.0,
                    )
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.grey[700]
                  )
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                      "Change password",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey[800],
                        fontSize: 16.0,
                      )
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.grey[700]
                  )
                ],
              ),
              SizedBox(
                height: 40.0
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFFF4BB8A),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ],
              ),
              Divider(
                  height: 10.0,
                  thickness: 1.2,
                  color: Colors.grey[400]
              ),
              SizedBox(
                  height: 16.0
              ),
              Row(
                children: <Widget>[
                  Text(
                      "Notifications",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey[800],
                        fontSize: 16.0,
                      )
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.grey[700]
                  )
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                      "App notification",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey[800],
                        fontSize: 16.0,
                      )
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.grey[700]
                  )
                ],
              ),
              SizedBox(
                  height: 40.0
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Color(0xFFF4BB8A),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                      "More",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w500
                      )
                  ),
                ],
              ),
              Divider(
                  height: 10.0,
                  thickness: 1.2,
                  color: Colors.grey[400]
              ),
              SizedBox(
                  height: 16.0
              ),
              Row(
                children: <Widget>[
                  Text(
                      "Logout",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey[800],
                        fontSize: 16.0,
                      )
                  ),
                  SizedBox(
                    width: 10.0
                  ),
                  Icon(
                    Icons.logout,
                    color: Color(0xFFF4BB8A)
                  )
                ],
              ),
            ],
          )
        )
      ),
    );
  }
}