import 'package:custom_theme/CustomCard.dart';
import 'package:flutter/cupertino.dart';

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
                child: CustomCard(),
              ),
              Expanded(
                child: CustomCard(),
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
