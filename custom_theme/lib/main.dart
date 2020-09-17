import 'package:flutter/material.dart';
import 'MyApp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF808080),
          appBar: AppBar(
            title: Text("Custom Widget"),
          ),
          body: MyApp(),
        ),
      ),
    ),
  );
}
