import 'package:flutter/material.dart';

// ignore: camel_case_types
class shippingadress extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<shippingadress> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


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
        title: Text('Shipping Adress',
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
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextField(
//                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*First Name:',

                ),
              ),
            ),


            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextField(
//                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*Last Name:',

                ),
              ),
            ),

            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextField(
                // obscureText: true,
                //              controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*Phone Number:\n Need Correct Phone Number For Delivery',


                ),
              ),
            ),
            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextField(
                //              controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*Street:',


                ),
              ),
            ),


            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextField(
                //              controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*Address Line1:',


                ),
              ),
            ),
            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextField(
                //              controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*Address Line2:',


                ),
              ),
            ),


            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextField(
                //              controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*State/Province/City/District:',


                ),
              ),
            ),

            SizedBox(
              height: 80,
            ),
            Container(

              padding: const EdgeInsets.symmetric(horizontal: 20),
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color:Colors.black)),
                color: Color((0xffefb19c),),
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Save',style: TextStyle
                        (color: Colors.black,
                          fontFamily: 'Comic Sans MS',
                          fontSize: 30,
                          fontWeight: FontWeight.normal
                      ),
                      ),

                    ],
                  ),

                ),
              ),
            ),

          ],

        ),)
      ,
    );
  }
}

