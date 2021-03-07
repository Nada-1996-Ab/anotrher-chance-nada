import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(12.0, 62.0),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
              width: 370.0,
              height: 427.0,
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
          Transform.translate(
            offset: Offset(26.0, 536.0),
            child: Container(
              width: 343.0,
              height: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38.0),
                color: const Color(0xfff3dde1),
                border: Border.all(width: 1.0, color: const Color(0xffff00aa)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(56.0, 556.0),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('signin');
                },
                child: SizedBox(
                  width: 276.0,
                  height: 37.0,
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Nirmala UI',
                      fontSize: 25,
                      color: const Color(0xffff00c4),
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
