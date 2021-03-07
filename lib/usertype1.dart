import 'package:flutter/material.dart';

class usertype1 extends StatelessWidget {
  usertype1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(84.0, 441.0),
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
            offset: Offset(84.0, 587.0),
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
            offset: Offset(113.0, 465.0),
            child: SizedBox(
              width: 167.0,
              height: 37.0,
              child: Text(
                'Donor',
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
            offset: Offset(110.0, 604.0),
            child: SizedBox(
              width: 174.0,
              height: 41.0,
              child: Text(
                'Needy',
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
            offset: Offset(31.5, 27.8),
            child: Transform.rotate(
              angle: 0.0,
              child:
                  // Adobe XD layer: 'logo' (shape)
                  Container(
                width: 330.0,
                height: 370.1,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  image: DecorationImage(
                    image: const AssetImage('assets/images/cover.jpg'),
                    fit: BoxFit.cover,
                  ),
                  border:
                      Border.all(width: 1.0, color: const Color(0xfff410fc)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
