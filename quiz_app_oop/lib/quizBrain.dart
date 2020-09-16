import 'QuesAns.dart';

class quizBrain {
  int _qnum = 0;

  List<QuesAns> _Q = [
    QuesAns("In Flutter everything is a widget", true),
    QuesAns("Flutter is based on Java Programming Language", false),
    QuesAns(
        "All Widgets in Flutter are classified as Stateless or Stateful Widget",
        true),
  ];

  String getQuestion() {
    String que = _Q[_qnum].question;
    return que;
  }

  void nextQuestion() {
    _qnum++;
  }

  bool isFinished() {
    //print(_Q.length);
    //print(_qnum);
    if (_qnum >= _Q.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  bool getAns() {
    bool ans = _Q[_qnum].ans;
    return ans;
  }

  void reset() {
    _qnum = 0;
  }
}
