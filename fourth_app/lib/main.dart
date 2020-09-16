import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("StateFul Widget"),
      ),
      body: SafeArea(
        child: MainApp(),
      ),
    ),
  ));
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int ld = 1, rd = 6;
  void changeDice() {
    setState(() {
      ld = Random().nextInt(5) + 1;
      rd = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset(
                  "assets/d$ld.png",
                  //width: 250.0,
                  //height: 150.0,
                  fit: BoxFit.fitWidth,
                )),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset(
                "assets/d$rd.png",
                //width: 250.0,
                //height: 150.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
