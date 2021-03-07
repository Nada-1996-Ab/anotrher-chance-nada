import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  signin({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(14.0, 351.0),
            child: Container(
              width: 358.0,
              height: 75.0,
              decoration: BoxDecoration(
                color: const Color(0xffc000c6),
                border: Border.all(width: 2.0, color: const Color(0xffc000c6)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 377.4),
            child: Transform.rotate(
              angle: 0.0,
              child: SizedBox(
                width: 349.0,
                height: 57.0,
                child: SingleChildScrollView(
                    child: Text(
                  'Sign In With Email\n',
                  style: TextStyle(
                    fontFamily: 'Microsoft YaHei UI',
                    fontSize: 26,
                    color: const Color(0xff010001),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 450.0),
            child: Container(
              width: 175.0,
              height: 57.0,
              decoration: BoxDecoration(
                color: const Color(0xff1606ff),
                border: Border.all(width: 1.0, color: const Color(0xff1606ff)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(214.0, 448.0),
            child: Container(
              width: 158.0,
              height: 57.0,
              decoration: BoxDecoration(
                color: const Color(0xfff52f2f),
                border: Border.all(width: 1.0, color: const Color(0xfff52f2f)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 458.0),
            child: SizedBox(
              width: 174.0,
              height: 42.0,
              child: SingleChildScrollView(
                  child: Text(
                'Facebook\n',
                style: TextStyle(
                  fontFamily: 'Microsoft YaHei UI',
                  fontSize: 26,
                  color: const Color(0xff413434),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(214.0, 463.0),
            child: SizedBox(
              width: 158.0,
              height: 42.0,
              child: SingleChildScrollView(
                  child: Text(
                'Google      \n',
                style: TextStyle(
                  fontFamily: 'Microsoft YaHei UI',
                  fontSize: 26,
                  color: const Color(0xff413434),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 530.0),
            child: Container(
              width: 349.0,
              height: 67.0,
              decoration: BoxDecoration(
                color: const Color(0xff7af0fe),
                border: Border.all(width: 1.0, color: const Color(0xff7af0fe)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 547.0),
            child: SizedBox(
              width: 349.0,
              height: 50.0,
              child: Text(
                '        Continue as a Guest',
                style: TextStyle(
                  fontFamily: 'Microsoft JhengHei UI',
                  fontSize: 26,
                  color: const Color(0xff4a00fb),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(167.5, 761.0),
            child: SizedBox(
              width: 13.0,
              child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Microsoft JhengHei UI',
                  fontSize: 26,
                  color: const Color(0xffd6d6d6),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(32.0, 9.0),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
              width: 302.0,
              height: 318.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage('assets/images/cover.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xfff410fc)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
