import 'dart:ui';
import 'package:another_chance_app/Loginpage.dart';
import 'package:another_chance_app/aboutus.dart';
import 'package:another_chance_app/accountsetting.dart';
import 'package:another_chance_app/adposting.dart';
import 'package:another_chance_app/profile.dart';
import 'package:another_chance_app/searchforitems.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstpage.dart';

// ignore: camel_case_types
class home extends StatefulWidget {

  final auth = FirebaseAuth.instance;

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<home> {
  get auth => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffefeaea),
        appBar: AppBar(
            backgroundColor: Color((0xffefb19c),),
            elevation: 10.0,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => searchforitems()),
                        );

                      },
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      onPressed: () {
                      },
                    ),
                    Text('3')
                  ],
                ),
              ),

            ]
        ),
        drawer: new Drawer(
          child: new ListView(
              children: <Widget>[
                new DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.white,
                      Color((0xffefb19c),),
                    ]),

                  ),

                  child:Container(
                    child: Column(
                      children:<Widget> [
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          elevation: 10,
                          child: Image.asset("assets/images/caver.png",width:100, height: 100,),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Welcom To Another Chance',style: TextStyle(fontSize:10,
                        ), ),
                      ],
                    ),
                  ),
                ),


                ListTile(
                  leading: Icon(Icons.home, color: Colors.black),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );

                  },
                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

                ),

                ListTile(
                  leading: Icon(Icons.person_rounded, color: Colors.black),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );

                  },
                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

                ),

                ListTile(
                  leading:Icon(Icons.add_to_photos, color: Colors.black),
                  title: Text('Add post'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => adposting()),
                    );

                  },
                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),


                ),
                ListTile(
                  leading: Icon(Icons.border_color, color: Colors.black),
                  title: Text('Order'),
                  onTap: () {},
                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

                ),
                ListTile(
                  leading:Icon(Icons.person_search_rounded, color: Colors.black),
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => aboutus()),
                    );

                  },
                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),

                ),
                ListTile(
                  leading: Icon(Icons.help_outline, color: Colors.black),
                  title: Text('Help'),
                  onTap: () {},
                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
                ListTile(
                  leading:Icon(Icons.settings, color: Colors.black),
                  title: Text('Account Setting'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => accountsetting()),
                    );

                  },
                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.black),

                  title: Text('Sign Out'),
                  onTap: () {
                    auth.signOut();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                  },

                  trailing:Icon(Icons.arrow_forward_ios, color: Colors.black),
                ),
              ]
          ),
        ),


        body: GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 30,
          padding: const EdgeInsets.only(top:60.0),
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color((0xffefb19c),),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: new ListView(
                        children: <Widget>[
                          Image.asset('assets/images/B.png', width: 100.0,height: 150,),
                          // ignore: deprecated_member_use
                          new FlatButton(onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => firstpage()),
                          );
                          }, child: null,
                          ),
                        ]
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    //margin: EdgeInsets.only(top: 160,left:110, ),
                    child: Text('Book',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Color((0xffefb19c),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: new ListView(
                        children: <Widget>[
                          Image.asset('assets/images/f.png', width: 100.0,height: 150,),
                          // ignore: deprecated_member_use
                          new FlatButton(onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => firstpage()),
                          );
                          }, child: null,
                          ),
                        ]
                    ),
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    // margin: EdgeInsets.only(top: 140,left:70),
                    child: Text('Furniture',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Color((0xffefb19c),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: new ListView(
                        children: <Widget>[
                          Image.asset('assets/images/c.png', width: 100.0,height: 150,),
                          // ignore: deprecated_member_use
                          new FlatButton(onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => firstpage()),
                          );
                          }, child: null,
                          ),
                        ]
                    ),
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    // margin: EdgeInsets.only(top: 160,left:100),
                    child: Text('Clothes',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Color((0xffefb19c),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: new ListView(
                        children: <Widget>[
                          Image.asset('assets/images/foodb.png', width: 100.0,height: 150,),
                          // ignore: deprecated_member_use
                          new FlatButton(onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => firstpage()),
                          );
                          }, child: null,
                          ),
                        ]
                    ),
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    // margin: EdgeInsets.only(top: 160,left:100),
                    child: Text('FoodBasket',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Color((0xffefb19c),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: new ListView(
                        children: <Widget>[
                          Image.asset('assets/images/eds.png', width: 100.0,height: 150,),
                          // ignore: deprecated_member_use
                          new FlatButton(onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => firstpage()),
                          );
                          }, child: null,
                          ),
                        ]
                    ),
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    //margin: EdgeInsets.only(top: 160,left:100),
                    child: Text('Electronic Devices',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Color((0xffefb19c),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: new ListView(
                        children: <Widget>[
                          Image.asset('assets/images/o.png', width: 160,height: 150,),
                          // ignore: deprecated_member_use
                          new FlatButton(onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => firstpage()),
                          );
                          }, child: null,
                          ),
                        ]
                    ),
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    // margin: EdgeInsets.only(top: 160,left:100),
                    child: Text('Others',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),

          ],
        )

    );
  }
}



