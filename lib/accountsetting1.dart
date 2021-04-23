import 'package:another_chance_app/accountsetting.dart';
import 'package:another_chance_app/profile.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class accountsetting1 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<accountsetting1> {


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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => accountsetting()),
            );
          },
        ),
        title: Text('Account Setting',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        ),

      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,

                child: Text("Enter Your Password", style: TextStyle
                  (color: Colors.blueGrey,
                    fontFamily: 'Comic Sans MS',
                    fontSize: 20,
                    fontWeight: FontWeight.bold

                ),
                ),
              ),

              Container(
                alignment: Alignment.center,

                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,

//                controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password here:',

                  ),
                ),
              ),


              Container(
                alignment: Alignment.center,

                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,

//                controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm password:',

                  ),
                ),
              ),


              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black)),
                  color: Color((0xffefb19c),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Save', style: TextStyle
                          (color: Colors.black,
                            fontFamily: 'Comic Sans MS',
                            fontSize: 20,
                            fontWeight: FontWeight.normal
                        ),
                        ),
                      ],


                    ),

                  ),
                ),
              ),


            ]
        ),
      ),
    );
  }
}
