import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Gender extends StatelessWidget {
  IconData icn_val;
  String gen;

  Gender({this.gen, this.icn_val});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF4169e1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icn_val,
            size: 50.0,
          ),
          Text(
            gen,
            style: TextStyle(
              fontSize: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
