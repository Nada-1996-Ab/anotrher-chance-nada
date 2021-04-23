import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



// ignore: camel_case_types
class profile extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<profile> {

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefeaea),
      appBar: AppBar(
        backgroundColor: Color((0xffefb19c),),
        elevation: 10.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text('Profile',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        ),
      ),


    );
  }
}
