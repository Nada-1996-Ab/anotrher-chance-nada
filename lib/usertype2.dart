import 'package:flutter/material.dart';

class usertype2 extends StatelessWidget {
  usertype2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(14.0, 507.0),
            child: Container(
              width: 167.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(49.0),
                color: const Color(0xfff93e96),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 533.5),
            child: SizedBox(
              width: 114.0,
              height: 44.0,
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
            offset: Offset(196.0, 507.0),
            child: Container(
              width: 177.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xffff39e5),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(196.0, 533.0),
            child: SizedBox(
              width: 177.0,
              height: 44.0,
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
            offset: Offset(22.0, 57.0),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
              width: 351.0,
              height: 409.0,
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
