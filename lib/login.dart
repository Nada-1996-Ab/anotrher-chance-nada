import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login extends StatelessWidget {
  login({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(16.0, 397.0),
            child: Container(
              width: 361.0,
              height: 57.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xffff39e5),
                border: Border.all(width: 1.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(47.0, 410.0),
            child: SizedBox(
              width: 300.0,
              height: 44.0,
              child: Text(
                'Log In',
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
            offset: Offset(25.0, 300.0),
            child: SvgPicture.string(
              _svg_exu9rk,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(-67.0, 264.0),
            child: SizedBox(
              width: 380.0,
              height: 51.0,
              child: Text(
                'Phone or email',
                style: TextStyle(
                  fontFamily: 'Microsoft JhengHei UI',
                  fontSize: 26,
                  color: const Color(0xff988dae),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-18.0, 323.0),
            child: SizedBox(
              width: 222.0,
              height: 46.0,
              child: Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'Microsoft JhengHei UI',
                  fontSize: 26,
                  color: const Color(0xff988dae),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.2, 477.0),
            child: Transform.rotate(
              angle: 0.0,
              child: SizedBox(
                width: 361.0,
                height: 43.0,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'Microsoft JhengHei UI',
                    fontSize: 26,
                    color: const Color(0xffec174a),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(25.0, 556.4),
            child: SvgPicture.string(
              _svg_u2p4je,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(77.5, 532.2),
            child: Transform.rotate(
              angle: -0.0175,
              child: SizedBox(
                width: 206.0,
                height: 37.0,
                child: Text(
                  '     OR',
                  style: TextStyle(
                    fontFamily: 'Microsoft JhengHei UI',
                    fontSize: 26,
                    color: const Color(0xff988dae),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(214.5, 556.4),
            child: SvgPicture.string(
              _svg_mtclik,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 592.0),
            child: Container(
              width: 338.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xff10f85d),
                border: Border.all(width: 1.0, color: const Color(0xff171717)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(14.0, 601.0),
            child: SizedBox(
              width: 351.0,
              height: 33.0,
              child: Text(
                'Create New Account',
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
            offset: Offset(27.0, 18.0),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
              width: 338.0,
              height: 236.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage('assets/images/cover.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_exu9rk =
    '<svg viewBox="25.0 300.0 325.0 61.0" ><path transform="translate(25.0, 300.05)" d="M 0 0 L 322 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(28.0, 361.0)" d="M 0 0 L 88.046875 0 L 322 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u2p4je =
    '<svg viewBox="25.0 556.4 151.0 1.0" ><path transform="translate(25.0, 556.42)" d="M 0 0 L 151 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mtclik =
    '<svg viewBox="214.5 556.4 150.5 1.0" ><path transform="translate(214.5, 556.42)" d="M 150.5 0 L 0 0.03045654296875" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
