import 'package:another_chance_app/firstpage.dart';
import 'package:flutter/material.dart';
//import 'Loginpage.dart';



// ignore: camel_case_types
class logo extends StatelessWidget {




  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: const Color(0xffefeaea),

        body: new Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          //color: Color((0xffefb19c),),
          child: new ListView(
              children: <Widget>[
                Image.asset('assets/images/caver.png', width: 700.0,height: 500,),
                 // ignore: deprecated_member_use
                 new FlatButton(onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>firstpage()),
                     );
                    },
                   child: new Text('Welcom to \n ANOTHER CHANCE :)',style: TextStyle(fontSize:30,foreground: Paint()
                     ..strokeWidth = 1
                     ..color = Colors.black,), ),

                 )
                 //ignore: deprecated_member_use


              ]),
              ),



      );
    }

}
