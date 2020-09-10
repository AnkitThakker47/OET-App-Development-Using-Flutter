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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              "assets/d1.png",
              width: 250.0,
              height: 150.0,
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/d6.png",
              width: 250.0,
              height: 150.0,
            ),
          ),
        ],
      ),
    );
  }
}
