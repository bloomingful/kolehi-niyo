import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
      MaterialApp(
      home: FeedPage()
      )
  );
}

class FeedPage extends StatelessWidget {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      appBar: AppBar(
        leading: Icon(
            Icons.home_filled
        ),
        title: Text(
          "Feed",
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
              _myRaisedButton(),
              Padding(
                padding: const EdgeInsets.all(16.0), // spacing
                child: Container(
                  child: new FittedBox(
                    child: Material(
                        color: Colors.white,
                        elevation: 15.0, // shadow depth
                        borderRadius: BorderRadius.circular(40.0),
                        shadowColor: Color(0xFFECE7E2), // change to grey later
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: myDetailsContainer1(),
                              ),
                            ),

                            Container(
                              width: 50,
                              height: 50,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                              ),),
                          ],)
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0), // spacing
                child: Container(
                  child: new FittedBox(
                    child: Material(
                        color: Colors.white,
                        elevation: 15.0, // shadow depth
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Color(0xFFECE7E2), // change to grey later
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: myDetailsContainer2(),
                              ),
                            ),

                            Container(
                              width: 50,
                              height: 70,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                              ),),
                          ],)
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0), // spacing
                child: Container(
                  child: new FittedBox(
                    child: Material(
                        color: Colors.white,
                        elevation: 15.0, // shadow depth
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Color(0xFFECE7E2), // change to grey later
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0, top:20.0),
                                child: myDetailsContainer3(),
                              ),
                            ),

                            Container(
                              width: 50,
                              height: 70,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                              ),),
                          ],)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder:
            (context) => SecondRoute()),
          );
        },
        child: const Icon(Icons.create),
        backgroundColor: Color(0xFFF4BB8A),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MyCustomForm();
    return Scaffold(
      backgroundColor: Color(0xFF393B63),
      appBar: AppBar(
        title: Text(
          "Make a post",
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
              //(),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Input title",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50.0,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Type here",
                      hintText: "Think of a concise title.",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  keyboardType: TextInputType.text,
                  minLines: 1,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Enter your thoughts here.",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                textAlignVertical: TextAlignVertical.top,
                controller: myController,
                decoration: InputDecoration(
                  hintText: "What's happening?",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 20,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text(
                          myController.text,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "Nothing to edit?",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  )
                );
              },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.send),
        backgroundColor: Color(0xFFF4BB8A),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}


Widget myDetailsContainer1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.account_circle, size:40.0)
                      ),
                      SizedBox(width:20),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "User Profile",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "u/Username123",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 20, width:250),
              Text(
                "Prom Event",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  Text(
                    "Hello there, I would like to ask for a favor about \nsomething regarding the prom event",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        child: Icon(Icons.mode_comment_outlined, size:20.0)
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      child: Text(
                        "20",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45.0,
                    ),
                    Container(
                      child: Icon(Icons.share_outlined, size:20.0)
                    )
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    ],
  );
}

Widget myDetailsContainer2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.account_circle, size:40.0)
                      ),
                      SizedBox(width:20),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "User Profile",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "u/Username123",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20, width:250),
                Text(
                  "Something wrong?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Text(
                      "OMG. You will not believe what I saw in YouTube. I \nthink there is something wrong.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.mode_comment_outlined, size:20.0)
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        child: Text(
                          "72",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 45.0,
                      ),
                      Container(
                          child: Icon(Icons.share_outlined, size:20.0)
                      )
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    ],
  );
}

Widget myDetailsContainer3() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.account_circle, size:40.0)
                      ),
                      SizedBox(width:20),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "User Profile",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "u/Username123",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20, width:250),
                Text(
                  "Is this true?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Text(
                      "Would anybody know if this is legit? I want to \nknow if it's actually true. Idk.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.mode_comment_outlined, size:20.0)
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        child: Text(
                          "40",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 45.0,
                      ),
                      Container(
                          child: Icon(Icons.share_outlined, size:20.0)
                      )
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    ],
  );
}



Widget _myRaisedButton() {
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            child: Text(
                "Best Posts",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                )
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left:20.0,right:20.0)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFF4BB8A)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                    )
                )
            ),
            onPressed: () => null
        ),
        SizedBox(width: 10),
        TextButton(
            child: Text(
                "Hot",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                )
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left:30.0,right:30.0)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFCFC8C2)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                    )
                )
            ),
            onPressed: () => null
        ),
        SizedBox(width: 10),
        TextButton(
            child: Text(
                "New",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                )
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left:30.0,right:30.0)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFCFC8C2)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                    )
                )
            ),
            onPressed: () => null
        ),
      ]
  );
}

