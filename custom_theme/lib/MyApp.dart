import 'package:custom_theme/CustomCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Gender.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Gender(gen: "Male", icn_val: FontAwesomeIcons.mars),
              ),
              Expanded(
                child: Gender(gen: "Female", icn_val: FontAwesomeIcons.venus),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomCard(),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CustomCard(),
              ),
              Expanded(
                child: CustomCard(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
