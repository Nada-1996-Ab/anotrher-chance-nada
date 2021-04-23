import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';



// ignore: camel_case_types
class uploadimage1 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<uploadimage1> {
  String imageUrl;

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
          onPressed: () {//Navigator.push(
          //  context,
          //  MaterialPageRoute(builder: (context) => ()),
         // );
          },
        ),
        title: Text('Upload Image',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.black)

        )),
      body: Column(
        children: <Widget>[
          (imageUrl != null)
              ? Image.network(imageUrl)
              : Placeholder(fallbackHeight: 200.0,fallbackWidth: double.infinity),
          SizedBox(height: 20.0,),
          RaisedButton(
            child: Text('Select Image',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 20.0,
                    color: Colors.black)
            ),
            color: Color((0xffefb19c),),
            onPressed: () => uploadImage(),
          )
        ],
      ),
    );
  }

  uploadImage() async {
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile image;


    //Check Permissions
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted){
      //Select Image
      image = await _picker.getImage(source: ImageSource.gallery);
     image = await  _picker.getImage(source: ImageSource.camera);
      var file = File(image.path);

      if (image != null){
        //Upload to Firebase
        var snapshot = await _storage.ref()
            .child('folderName/imageName')
            .putFile(file)
            //.onComplete
        ;

        var downloadUrl = await snapshot.ref.getDownloadURL();

        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('No Path Received');
      }

    } else {
      print('Grant Permissions and try again');
    }




  }

}
