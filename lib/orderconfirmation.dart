
import 'package:another_chance_app/shippingadress.dart';
import 'package:another_chance_app/thanks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class orderconfirmation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<orderconfirmation> {

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
        title: Text(' Order Confirmation',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        ),
      ),


      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
            children: <Widget>[

              Container(
                alignment: Alignment.topRight,

                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => shippingadress()),
                    );
                  },

                ),

              ),


              SizedBox(
                height: 15,
              ),
              Container(

                padding: const EdgeInsets.symmetric(horizontal: 20),
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.white)),
                  color: Color((0xffefb19c),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => thanks()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Place Order', style: TextStyle
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