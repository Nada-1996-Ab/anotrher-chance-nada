import 'package:another_chance_app/Loginpage.dart';
import 'package:another_chance_app/registerDN.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';



// ignore: must_be_immutable, camel_case_types
class signup extends StatefulWidget {
  final GlobalKey<FormState> globalKey=GlobalKey<FormState>();




  @override
  State<StatefulWidget> createState() => new _State();

}

class _State extends State<signup> {
  String _email, _password;
  FirebaseAuth auth = FirebaseAuth.instance;


  //final registerDN = FirebaseDatabase.instance.reference().child('registerDN');
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final idController= TextEditingController();
  final phonenumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final birthdayController= TextEditingController();



  // ignore: missing_return
  Future<void> insertData(final registerDN)async{
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    firestore.collection("register").add(registerDN).then((DocumentReference document){
      print(document.id);
    }).catchError((e){
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    var globalKey;
    return Scaffold(
      backgroundColor: const Color(0xffefeaea),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Form(
          key: globalKey,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.topCenter,

              child: Text("SIGN UP", style: TextStyle
                (color: Colors.blueGrey,
                  fontFamily: 'Comic Sans MS',
                  fontSize: 20,
                  fontWeight: FontWeight.normal

              ),
              ),
            ),

            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),

              child: TextFormField(
                controller: firstnameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'FIRST NAME:',
                  prefixIcon: Icon(Icons.person),

                ),


              ),
            ),


            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: lastnameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'LAST NAME:',
                  prefixIcon: Icon(Icons.person),

                ),
              ),
            ),

            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: idController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ID:',
                  prefixIcon: Icon(Icons.perm_identity),

                ),
              ),
            ),

            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                //obscureText: true,
                controller: phonenumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'PHONE NUMBER:',
                  prefixIcon: Icon(Icons.phone_android),


                ),
              ),
            ),

            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                // obscureText: true,
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'EMAIL:',
                  prefixIcon: Icon(Icons.email),


                ),

                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
            ),


            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                // ignore: missing_return
                validator: (value) {
                  if (value.length < 6) {
                    return 'Longer password please';
                  }
                  return null;
                },
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'PASSWORD: ',
                  prefixIcon:Icon(Icons.lock),
                ),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
            ),

            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                //obscureText: true,
                controller: birthdayController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'BIRTHDAY:',
                  prefixIcon: Icon(Icons.cake),
                ),
              ),
            ),


            SizedBox(
              height: 30,
            ),


            Container(

              padding: const EdgeInsets.symmetric(horizontal: 20),
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white)),
                color: Color((0xffefb19c),),
                onPressed: () {
                  final String firstname = firstnameController.text;
                  final String lastname = lastnameController.text;
                  final String id = idController.text;
                  final String phonenumber = phonenumberController.text;
                  final String email = emailController.text;
                  final String password = passwordController.text;
                  final String birthday = birthdayController.text;

                  final registerDN register = registerDN( firstname, lastname, id, phonenumber, email, password, birthday);

                  insertData(register.toMap());


               if( globalKey.currentState.validate()) {
                 globalKey.currentState.save();



                 Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context) => LoginPage()),


                 );
               }

                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                      email: _email, password: _password).then((
                      context) => null);


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
                        'SIGN UP', style: TextStyle
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

          ],

        ),)
      ,

    ));
  }

}



