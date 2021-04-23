import 'package:flutter/material.dart';

class aboutus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffefeaea),
    body: new Container(
    padding: EdgeInsets.all(5),
    alignment: Alignment.center,
    //color: Color((0xffefb19c),),
    child: new ListView(
    children: <Widget>[
          Container(
              width: 412.0,
              height: 241.0,
              decoration: BoxDecoration(
                color: const Color(0xffefeaea),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),

                  child: Image.asset( 'assets/images/caver.png', width: 300.0,height: 299.0,),
                  ),
         SizedBox(
          //  Container(
            width: 104.0,
             child: Text( 'Version 1.0',
                style: TextStyle(
                  fontFamily: 'Sitka Display',
                  fontSize: 20,
                  color: const Color(0xffb7b2b2),
                  ),
                textAlign: TextAlign.center,
              ),
         ),

        ],
      ),
    ),
    );
  }
}
