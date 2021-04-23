import 'package:another_chance_app/accountsetting1.dart';
import 'package:another_chance_app/adposting.dart';
import 'package:another_chance_app/firstpage.dart';
import 'package:flutter/material.dart';

import 'logo.dart';


// ignore: camel_case_types
class accountsetting extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<accountsetting> {


  var titleList = [
    "CHANGE USERNAME",
    "CHANGE PASSWORD",
    "CHANGE EMAIL ADDRESS",
    "CHANGE PHONE NUMBER",

  ];


// Image Name List Here
  var imgList = [
    "assets/images/name.png",
    "assets/images/password.png",
    "assets/images/email.png",
    "assets/images/phone.png",
  ];


  var button =[
    accountsetting1(),
    logo(),
    firstpage(),
    adposting(),

  ];

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xffefeaea),
      appBar: AppBar(
        backgroundColor:Color((0xffefb19c),),
        elevation: 10.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text('Account Setting',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        ),
      ),

      body: ListView(
          children: <Widget>[

            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text('Change UserName'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => accountsetting1()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),


            ListTile(
              leading: Icon(Icons.lock, color: Colors.black),
              title: Text('Chance Password'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => accountsetting1()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),

            ListTile(
              leading: Icon(Icons.email_outlined, color: Colors.black),

              title: Text('Chance Email Address'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => accountsetting1()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),

            ListTile(
              leading: Icon(Icons.phone_android, color: Colors.black),
              title: Text('Chance Phone Number'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => accountsetting1()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),


          ]

      ),

    );
  }
}



