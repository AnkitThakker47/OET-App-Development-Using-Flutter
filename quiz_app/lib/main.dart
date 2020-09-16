import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromRGBO(69, 24, 81, 1),
      appBar: AppBar(
        title: Text("QUIZ GAME"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: QuestionAnswers(),
        ),
      ),
    ),
  ));
}

class QuestionAnswers extends StatefulWidget {
  @override
  _QuestionAnswersState createState() => _QuestionAnswersState();
}

class _QuestionAnswersState extends State<QuestionAnswers> {
  List<Widget> score = [];
  List<bool> cans = [true, false, true];
  int qnum = 0;
  List<String> quest = [
    "Everything in flutter is widget",
    "Flutter is based on Java Language",
    "Widgets in flutter are recognised as Stateless and Stateful"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                quest[qnum],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                bool rightAns = cans[qnum];
                if (rightAns == true) {
                  score.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                } else {
                  score.add(Icon(
                    Icons.close,
                    color: Colors.redAccent,
                  ));
                }
                setState(() {
                  qnum += 1;
                });
              },
              child: Text(
                "True",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                bool rightAns = cans[qnum];
                if (rightAns == false) {
                  score.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                } else {
                  score.add(Icon(
                    Icons.close,
                    color: Colors.redAccent,
                  ));
                }
                setState(() {
                  qnum += 1;
                });
              },
              child: Text(
                "False",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: score,
          ),
        ],
      ),
    );
  }
}
