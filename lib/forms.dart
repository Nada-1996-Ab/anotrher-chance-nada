import 'package:flutter/material.dart';

class forms extends StatelessWidget {
  forms({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Container(
            width: 412.0,
            height: 95.0,
            decoration: BoxDecoration(
              color: const Color(0xff645662),
              border: Border.all(width: 1.0, color: const Color(0xffc4afbd)),
            ),
          ),
          Transform.translate(
            offset: Offset(15.5, 14.0),
            child: Transform.rotate(
              angle: 0.0,
              child: SizedBox(
                width: 229.0,
                height: 66.0,
                child: SingleChildScrollView(
                    child: Text(
                  'Information \nForms\n\n',
                  style: TextStyle(
                    fontFamily: 'Malgun Gothic',
                    fontSize: 25,
                    color: const Color(0xffff00bb),
                  ),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(258.0, 9.0),
            child:
                // Adobe XD layer: 'ايقونة شخص2 ' (shape)
                Container(
              width: 130.0,
              height: 78.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage('assets/images/icon person.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xffff00bb)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x294d1c4a),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 612.0),
            child: Container(
              width: 130.0,
              height: 38.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xffe9aadf),
                border: Border.all(width: 1.0, color: const Color(0xffdc23d6)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(216.0, 612.0),
            child: Container(
              width: 133.0,
              height: 38.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xffe9aadf),
                border: Border.all(width: 1.0, color: const Color(0xffdc23d6)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 612.0),
            child: SizedBox(
              width: 141.0,
              height: 38.0,
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontFamily: 'Led Font',
                  fontSize: 29,
                  color: const Color(0xff787878),
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(202.0, 612.0),
            child: SizedBox(
              width: 157.0,
              height: 39.0,
              child: Text(
                'submit',
                style: TextStyle(
                  fontFamily: 'Led Font',
                  fontSize: 29,
                  color: const Color(0xff787878),
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.0, 107.0),
            child: Container(
              width: 371.0,
              height: 49.0,
              decoration: BoxDecoration(
                color: const Color(0xfffffbfb),
                border: Border.all(width: 1.0, color: const Color(0xffff00cc)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-100.0, 117.0),
            child: SizedBox(
              width: 316.0,
              height: 39.0,
              child: Text(
                '       First Name',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 20,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 166.0),
            child: Container(
              width: 370.0,
              height: 48.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00d5)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(21.0, 175.0),
            child: SizedBox(
              width: 100.0,
              child: Text(
                'last name \n',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 20,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 229.0),
            child: Container(
              width: 368.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00bb)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 296.0),
            child: Container(
              width: 182.0,
              height: 47.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00aa)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 239.0),
            child: SizedBox(
              width: 46.0,
              height: 37.0,
              child: Text(
                'Id',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 25,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.8, 303.0),
            child: SizedBox(
              width: 115.0,
              child: Text(
                'Birthday ',
                style: TextStyle(
                  fontFamily: 'Malgun Gothic',
                  fontSize: 25,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 359.0),
            child: Container(
              width: 367.0,
              height: 47.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00a1)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-38.0, 369.0),
            child: SizedBox(
              width: 355.0,
              height: 37.0,
              child: Text(
                'Educational qualification',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 20,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 426.0),
            child: Container(
              width: 185.0,
              height: 49.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00cc)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 490.0),
            child: Container(
              width: 367.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00cc)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.8, 431.0),
            child: SizedBox(
              width: 51.0,
              child: Text(
                'Job',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 25,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(217.0, 296.0),
            child: Container(
              width: 165.0,
              height: 47.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00dd)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(217.0, 306.0),
            child: SizedBox(
              width: 138.0,
              height: 27.0,
              child: Text(
                ' Phone number',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 20,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(216.0, 426.0),
            child: Container(
              width: 166.0,
              height: 49.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00ee)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(199.0, 433.0),
            child: SizedBox(
              width: 115.0,
              height: 50.0,
              child: Text(
                'pass ',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 25,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-10.0, 499.0),
            child: SizedBox(
              width: 144.0,
              height: 33.0,
              child: Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 25,
                  color: const Color(0xff787878),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 552.0),
            child: Container(
              width: 367.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00b2)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 559.0),
            child: SizedBox(
              width: 228.0,
              height: 66.0,
              child: Text(
                ' Location or Address\n',
                style: TextStyle(
                  fontFamily: 'Nirmala UI',
                  fontSize: 20,
                  color: const Color(0xff787878),
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
