import 'package:flutter/material.dart';

class languges extends StatelessWidget {
  languges({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(80.0, 204.0),
            child: Container(
              width: 224.0,
              height: 84.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xfff93e96),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(80.0, 351.0),
            child: Container(
              width: 224.0,
              height: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xffff39e5),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(113.0, 228.0),
            child: SizedBox(
              width: 167.0,
              height: 37.0,
              child: SingleChildScrollView(
                  child: Text(
                'Enhlish\n',
                style: TextStyle(
                  fontFamily: 'Microsoft YaHei UI',
                  fontSize: 26,
                  color: const Color(0xff5a0ef3),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(105.0, 368.0),
            child: SizedBox(
              width: 174.0,
              height: 41.0,
              child: Text(
                'العربية ',
                style: TextStyle(
                  fontFamily: 'Microsoft JhengHei UI',
                  fontSize: 26,
                  color: const Color(0xff5a0ef3),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(38.0, 64.0),
            child: SizedBox(
              width: 308.0,
              height: 33.0,
              child: Text(
                'Choose the Languages:',
                style: TextStyle(
                  fontFamily: 'Microsoft YaHei UI',
                  fontSize: 26,
                  color: const Color(0xff5a0ef3),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(121.0, 123.0),
            child: SizedBox(
              width: 152.0,
              height: 42.0,
              child: Text(
                'أختر اللغة ',
                style: TextStyle(
                  fontFamily: 'Microsoft YaHei UI',
                  fontSize: 26,
                  color: const Color(0xff5a0ef3),
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
