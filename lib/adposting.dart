import 'package:another_chance_app/Loginpage.dart';
import 'package:another_chance_app/home.dart';
import 'package:another_chance_app/signup.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class adposting extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<adposting> {



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
        title: Text('Ad Posting',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        ),
      ),

      body: ListView(
          children: <Widget>[

            ListTile(
              title: Text('Book'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),


            ListTile(
              title: Text('Furnituer'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),

            ListTile(
              title: Text('Clothes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),

            ListTile(
              title: Text('Food Basket'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),

            ListTile(
              title: Text('Electronic Devices'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),

            ListTile(
              title: Text('Other'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );

              },
              trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

            ),
          ]

      ),

    );
  }
}

