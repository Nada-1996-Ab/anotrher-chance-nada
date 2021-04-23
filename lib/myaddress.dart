
import 'package:another_chance_app/orderconfirmation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'shippingadress.dart';


// ignore: camel_case_types
class myaddress extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<myaddress> {

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
          onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => orderconfirmation()),
          );
          },

        ),
        title: Text(' My Address',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        ),
      ),


      body: new Container(
        alignment: Alignment.centerRight,
        child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: TextField(
//                controller: nameController,
                  maxLines: 12,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ),
                ),
              ),


              new Container(

                padding: const EdgeInsets.symmetric(horizontal: 10),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => shippingadress()),
                    );

                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.border_color, color: Colors.black),
                            title: Text('Edit'),

                          ),
                        ]
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