import 'package:flutter/material.dart';

/*
Hot rloead use Build Method
void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
      child: Text("Hello Ankit"),
    ));
  }
}*/

/*void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Text("Text at Center"),
        ),
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    ),
  );
}*/

/*void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Text("I am Ankit"),
            height: 200.0,
            width: 100.0,
            //margin: EdgeInsets.all(20.0),
            //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
            //margin: EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 100.0),
            margin: EdgeInsets.only(left: 200),
            padding: EdgeInsets.all(20.0),
          ),
        ),
      ),
    ),
  );
}*/

/*void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //verticalDirection: VerticalDirection.up,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                //width: 100.0,
                height: 50.0,
                color: Colors.orangeAccent,
                child: Text("I am Container 1"),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                //width: 100.0,
                height: 50.0,
                color: Colors.white,
                child: Text("I am Container 2"),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                //width: 100.0,
                height: 50.0,
                color: Colors.green,
                child: Text("I am Container 3"),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  //width: double.infinity,
                  )
            ],
          ),
        ),
      ),
    ),
  );
}*/

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.yellow.shade900,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/ss.jpeg'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Ankit Thakker',
                  style: TextStyle(
                    fontFamily: 'First',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Student",
                  style: TextStyle(
                    fontFamily: 'Second',
                    fontSize: 15.0,
                    letterSpacing: 2.5,
                    color: Colors.white,
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "ankit@sample.com",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Colors.teal,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          "0123456789",
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        )),
  );
}
