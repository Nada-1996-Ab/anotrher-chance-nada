import 'package:another_chance_app/language.dart';
import 'package:another_chance_app/main.dart';
import 'package:flutter/material.dart';
import 'Loginpage.dart';



// ignore: camel_case_types
class firstpage extends StatelessWidget {


// ignore: unused_field
  final GlobalKey<FormState> _key = GlobalKey<FormState>();


  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xffefeaea),
      appBar: AppBar(
        backgroundColor: Color((0xffefb19c),),
        title: Text('Another Chance',
            style: TextStyle(
                fontFamily: 'Merienda',
                fontSize: 20.0,
                color: Colors.black)

        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: DropdownButton(
              underline: SizedBox(),
              icon: Icon(
                Icons.language,
                color: Colors.black,
              ),
              items: language.LanguageList()
                  .map<DropdownMenuItem<language>>((lang) =>
                  DropdownMenuItem(
                    value: lang,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          lang.flag,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(lang.name)
                      ],
                    ),
                  )
              ).toList(),
              onChanged: (language lang) {
                _changeLanguage(lang);
              },
            ),
          )
        ],
      ),
      body: new Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        //color: Colors.white70,
        child: new ListView(
          children: <Widget>[
            Image.asset('assets/images/caver.png', width: 700.0, height: 500,),


            Container(

              padding: const EdgeInsets.symmetric(horizontal: 20),
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black)),
                color: Color((0xffefb19c),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                        height: 5,
                      ),
                      Text(
                        'DONOR', style: TextStyle
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
            SizedBox(
              height: 30,
            ),

            Container(

              padding: const EdgeInsets.symmetric(horizontal: 20),
              // ignore: deprecated_member_use
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black)),
                color: Color((0xffefb19c),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                        height: 5,
                      ),
                      Text(
                        'NEEDY', style: TextStyle
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


        ),

      ),
    );
  }
  void _changeLanguage(language lang) {
    Locale _temp;
    switch (lang.languageCode) {
      case 'en':
        _temp = Locale(lang.languageCode, 'US');
        break;
      case 'ar':
        _temp = Locale(lang.languageCode, 'EG');
        break;
      default:
        _temp = Locale('en', 'US');
        break;
    }
    BuildContext context;
    MyApp.setLocale(context, _temp);


  }
}








