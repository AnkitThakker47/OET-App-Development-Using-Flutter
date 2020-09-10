import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class first_appGooglePixel3XL1 extends StatelessWidget {
  first_appGooglePixel3XL1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 412.0,
            height: 847.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          // Adobe XD layer: 'burger' (shape)
          Container(
            width: 412.0,
            height: 412.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/burger1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(38.0, 17.0),
            child: Container(
              width: 322.0,
              height: 39.0,
              decoration: BoxDecoration(
                color: const Color(0xfffece02),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(44.0, 26.0),
            child: Text(
              'TRY OUT OUR FRESHLY MADE BURGERS',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 412.0),
            child: Container(
              width: 412.0,
              height: 311.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.04, -0.18),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xfffece02), const Color(0xff7f6701)],
                  stops: [0.0, 1.0],
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(111.0, 538.0),
            child: Container(
              width: 176.0,
              height: 49.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xfff45827),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(110.2, 547.0),
            child: SizedBox(
              width: 178.0,
              child: Text(
                'ORDER NOW',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 24,
                  color: const Color(0xfffffefe),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.5, 729.5),
            child: SvgPicture.string(
              _svg_xfyhty,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 723.0),
            child: Container(
              width: 413.0,
              height: 124.0,
              decoration: BoxDecoration(
                color: const Color(0xfff45827),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(33.2, 763.0),
            child: SizedBox(
              width: 346.0,
              child: Text(
                'WALK INTO OUR NEAREST STORE TO\nAVAIL GREAT OFFERS',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 17,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_xfyhty =
    '<svg viewBox="0.5 729.5 412.0 1.0" ><path transform="translate(0.5, 729.5)" d="M 0 0 L 412 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
