import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class aboutus extends StatelessWidget {
  aboutus({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          SvgPicture.string(
            _svg_o5ypzz,
            allowDrawingOutsideViewBox: true,
          ),
          Transform.translate(
            offset: Offset(100.0, 0.0),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
              width: 174.0,
              height: 161.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/cover.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xfff88ebc)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(130.0, 164.0),
            child: Text(
              'Version  1.0',
              style: TextStyle(
                fontFamily: 'Segoe Print',
                fontSize: 20,
                color: const Color(0xff848282),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_o5ypzz =
    '<svg viewBox="0.0 0.0 393.0 206.0" ><path  d="M 0 0 L 393 0 L 393 206 L 0 206 L 0 0 Z" fill="#f2d5e8" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
