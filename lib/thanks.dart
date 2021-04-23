import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class thanks extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<thanks> {

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefeaea),
      appBar: AppBar(
        backgroundColor: Color((0xffefb19c),),
      ),


      body: new Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        //color: Color((0xffefb19c),),
        child: new ListView(
            children: <Widget>[
              Image.asset('assets/images/caver.png', width: 700.0,height: 500,),
              // ignore: deprecated_member_use


              SizedBox(
                height: 15,
              ),

              new Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      ' Tank You For \n using Our App',style: TextStyle
                      (color: Colors.black,
                        fontFamily: 'Comic Sans MS',
                        fontSize: 30,
                        fontWeight: FontWeight.normal
                    ),
                    ),

                  ],
                ),

              ),
            ]
        ),
      ),

    );
  }
}