import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class emptybag extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xffefeaea),

    body: new Container(
        padding: EdgeInsets.all(10),
    alignment: Alignment.center,
    //color: Color((0xffefb19c),),
    child: new ListView(
      children: <Widget>[
          Image.asset('assets/images/ebag.png',  width: 158.0,height: 158.0,),


        SizedBox(
          height: 30,
        ),

      SizedBox(
            width: 257.0,
            child: Text(
              'Your bag is empty',
              style: TextStyle(
                fontFamily: 'Sitka Display',
                fontSize: 30,
                color: const Color(0xffb7b2b2),
              ),
              textAlign: TextAlign.center,

            ),
          ),

      ],),
    ),
  );
}
}

