import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';






// ignore: camel_case_types
class uploadimage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<uploadimage> {
  File image;
  String imageUrl;



  final _storage = FirebaseStorage.instance;
  final _picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefeaea),
      appBar: AppBar(
        backgroundColor: Color((0xffefb19c),),
        elevation: 10.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: ()  {},
        ),
        title: Text('Upload Image',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        ),
      ),

      body:  Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        //color: Color((0xffefb19c),),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 412.0,
                height: 241.0,
                decoration: BoxDecoration(
                  color: const Color(0xffefeaea),
                  border: Border.all(width: 1.0, color: const Color(0xff707070)),
                ),


                child: Image.asset( 'assets/images/cam.png', width: 300.0,height: 299.0,),
              ),

              Container(
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color:Colors.white)),
                  color: Color((0xffefb19c),),
                  onPressed: ()
                  =>uploadimage(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          ' Select Image',style: TextStyle
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


  uploadimage() async{

    PickedFile image;
    //check permission
    var permission;
    await permission.photos.request();
    var permissionStatus = await permission.photo.status;

    if(permissionStatus.isGranted){
      //select image
      await  _picker.getImage(source: ImageSource.gallery);
      await  _picker.getImage(source: ImageSource.camera);
      var file = File(image.path);
      if (image !=null){

        //upload to firebase
        var snapshot = await _storage.ref()
            .child("folderName/imageName")
            .putFile(file)
        ;

        var downloadUrl = await snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downloadUrl;
        });

      } else{
        print("No Path Received");
      }

    } else {
      print("Grant permission and try again");
    }


  }


}
