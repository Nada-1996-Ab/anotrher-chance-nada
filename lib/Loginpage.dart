import 'package:another_chance_app/ResetScreen.dart';
import 'package:another_chance_app/home.dart';
import 'package:another_chance_app/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';


const users = const {
   'nd00shybasu@gmail.com': 'Nd@1234567890',
};
class LoginPage extends StatefulWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }


    @override
    State<StatefulWidget> createState() => new _State();
  }

  class _State extends State<LoginPage> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: const Color(0xffefeaea),


  body: Padding(
  padding: EdgeInsets.all(10),
  child: ListView(
  children: <Widget>[

  Container(
  width: 320.0,
  height: 320.0,
  decoration: BoxDecoration(
  image: DecorationImage(
  image: const AssetImage('assets/images/caver.png'),
  fit: BoxFit.fill
  ),
  ),
  ),
  Container(
  alignment: Alignment.center,

  padding: EdgeInsets.all(10),
  child: TextField(
  controller: nameController,
  decoration: InputDecoration(
  //   border: OutlineInputBorder(),
  labelText: 'Enter your Email:',
  icon: new Icon(Icons.email),


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
  child: TextField(
  obscureText: true,
  controller: passwordController,
  decoration: InputDecoration(
  // border: OutlineInputBorder(),
  labelText: 'Enter your Password:',
  icon: new Icon(Icons.lock),


  ),
  onChanged: (value) {
  setState(() {
  _password = value.trim();
  });
  },
  ),
  ),
  Container(
  alignment: Alignment.centerLeft,
  padding: EdgeInsets.all(10),
  // ignore: deprecated_member_use
  child: FlatButton(
  onPressed: (){Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ResetScreen()),
  );
  },
  padding: EdgeInsets.only(right: 0.0),

  child: Text(
  'Forget Password?',
  style: TextStyle(
  //color: Colors.blue,
  fontWeight: FontWeight.w500,
  fontSize: 20),
  )),

  ),
  Container(

  padding: const EdgeInsets.symmetric(horizontal: 20),
  // ignore: deprecated_member_use
  child: FlatButton(
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  side: BorderSide(color:Colors.black)),
  color: Color((0xffefb19c),),
  onPressed: () {auth.signInWithEmailAndPassword(email: _email, password: _password);
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home()),

  );


  },


  child: Container(
  padding: const EdgeInsets.symmetric(vertical: 16),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  SizedBox(
  width: 5,
  ),
  Text(
  'LOG IN',style: TextStyle
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
  Container(
  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
  alignment: Alignment.center,
  // ignore: deprecated_member_use
  child: FlatButton(
  onPressed: () {auth.signInWithEmailAndPassword(email: _email, password: _password);Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => signup()),
  );
  },

  padding: EdgeInsets.only(right: 0.0),
  child: Text("New to Another Chance?\n Create an account", style: TextStyle
  (color: Colors.blueGrey,
  fontFamily: 'Comic Sans MS',
  fontSize: 20,
  fontWeight: FontWeight.normal

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






