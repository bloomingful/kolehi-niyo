import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: ProfilePage()
  ));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      appBar: AppBar(
        leading: Icon(
            Icons.perm_identity_outlined
        ),
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
                image: AssetImage('assets/gahyeon.png'),
              ),
              Divider(
                  height: 10.0,
                  color: Colors.grey[600]
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                  "Gahyeon Lee, 22",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600
                  )
              ),
              Text(
                  "3rd year college, BS Computer Science",
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
                  "Seongnam, South Korea",
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
                  "I was an honor student for 3 years. I studied in the Philippines for a few months. In the group, I represent the nightmare of falling down from high places.",
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('Edit your profile.'),
            duration: const Duration(seconds: 2),
          ));
        },
        child: const Icon(Icons.tune),
        backgroundColor: Color(0xFFF4BB8A),
      ),
    );
  }
}

