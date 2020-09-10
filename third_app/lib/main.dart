import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final p = AudioCache();
                  p.play("note1.wav");
                },
                color: Colors.purple,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final p = AudioCache();
                  p.play("note2.wav");
                },
                color: Colors.indigo,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final p = AudioCache();
                  p.play("note3.wav");
                },
                color: Colors.blueAccent,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final p = AudioCache();
                  p.play("note4.wav");
                },
                color: Colors.greenAccent,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final p = AudioCache();
                  p.play("note5.wav");
                },
                color: Colors.yellowAccent,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final p = AudioCache();
                  p.play("note6.wav");
                },
                color: Colors.orangeAccent,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final p = AudioCache();
                  p.play("note7.wav");
                },
                color: Colors.redAccent,
              ),
            ),
          ],
        )),
      ),
    );
  }
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sendWidget(Colors.purpleAccent, 1),
            sendWidget(Colors.indigoAccent, 2),
            sendWidget(Colors.blueAccent, 3),
            sendWidget(Colors.greenAccent, 4),
            sendWidget(Colors.yellowAccent, 5),
            sendWidget(Colors.orangeAccent, 6),
            sendWidget(Colors.redAccent, 7),
          ],
        ),
      ),
    );
  }

  Expanded sendWidget(Color c, int soundno) {
    int i = soundno;
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final p = AudioCache();
          p.play("note$i.wav");
        },
        child: Text(soundno.toString()),
        color: c,
      ),
    );
  }
}
