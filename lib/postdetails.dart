import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class postdetails extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<postdetails> {
  int _radioValue = 0;
  String result = '';
  void handledRadioOnChanged (int value){
    setState(() {
      _radioValue = value;
    });
    switch(_radioValue){
      case 0:
        result = 'New';
        print(result);
        break;
      case 1:
        result = 'Used';
        print(result);
        break;



    }
  }


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
          onPressed: () {},
        ),
        title: Text(' Post Details',
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
                padding: EdgeInsets.only(right:20),
                alignment: Alignment.centerRight,
                child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.border_color, color: Colors.black),
                        title: Text('Ad titel'),

                      ),
                    ]
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: TextField(
//                controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Titel:',
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.centerLeft,
                child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Items Condition:'),

                      ),
                    ]
                ),
              ),

              new Container(
                  margin:EdgeInsets.only(left: 42) ,
                  child: new Row(
                    children: <Widget>[
                      new Text("New"),
                      new Radio(value: 0,
                          groupValue: _radioValue,
                          onChanged: handledRadioOnChanged
                        // activeColor: Colors.black,
                      ),
                      new Container(
                        margin:EdgeInsets.only(left: 22) ,
                        child: new Text("Used"),
                      ),
                      new Radio(value: 1,
                          groupValue: _radioValue,
                          onChanged: handledRadioOnChanged
                      ),

                    ],
                  )
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: TextField(
//                controller: nameController,
                  maxLines: 12,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Description:',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(

                padding: const EdgeInsets.symmetric(horizontal: 20),
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color:Colors.white)),
                  color: Color((0xffefb19c),),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Text(
                          'Post',style: TextStyle
                          (
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
