import 'package:flutter/material.dart';

class search extends StatelessWidget {
  search({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb7e7),
      body: Stack(
        children: <Widget>[
          Container(
            width: 422.0,
            height: 130.0,
            decoration: BoxDecoration(
              color: const Color(0xffae6ba3),
              border: Border.all(width: 1.0, color: const Color(0xffffb7e7)),
            ),
          ),
          Transform.translate(
            offset: Offset(23.0, 102.0),
            child: Container(
              width: 358.0,
              height: 57.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffff00dd)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(322.0, 102.0),
            child:
                // Adobe XD layer: 'بحث' (shape)
                Container(
              width: 59.0,
              height: 57.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48.0),
                image: DecorationImage(
                  image: const AssetImage('assets/images/icon search.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xffff00d5)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(54.0, 112.0),
            child: Text(
              'Search',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xff787878),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
