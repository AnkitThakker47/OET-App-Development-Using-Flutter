import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quiz_app_oop/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

quizBrain q = quizBrain();

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("QUIZ GAME"),
          backgroundColor: Colors.blue,
          shadowColor: Colors.black45,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizApp(),
          ),
        ),
      ),
    ),
  );
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Widget> score = [];

  void checkAnswer(bool ansUser) {
    setState(() {
      //String ans = (q.isFinished() == true) ? 'true' : 'false';
      //print("Is finished or not" + ans);
      if (q.isFinished() == true) {
        /*showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Quiz Finished"),
                content: Text("Do you want to reset the test"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Reset"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });*/
        Alert(
          context: context,
          title: 'Done!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        q.reset();
        score = [];
        q.reset();
        score = [];
      } else {
        bool rightAns = q.getAns();
        if (rightAns == ansUser) {
          score.add(
            Icon(Icons.check, color: Colors.greenAccent),
          );
        } else {
          score.add(Icon(
            Icons.close,
            color: Colors.redAccent,
          ));
        }
        q.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                q.getQuestion(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
                "True",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
                "False",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: score,
          ),
        ),
      ],
    );
  }
}
