import 'package:another_chance_app/home.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class searchforitems extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<searchforitems> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating has been clicked");
        },
        child: Icon(Icons.add, color: Colors.white, ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Color(0xffefeaea),
      appBar: AppBar(
        backgroundColor: Color((0xffefb19c),),
        elevation: 10.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => home()),
            );

          },
        ),
      ),


      body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  icon: Icon(Icons.search, color: Colors.black),
                  border: InputBorder.none,
                ),
              ),
            ),
          ]
      ),
    );
  }
}


