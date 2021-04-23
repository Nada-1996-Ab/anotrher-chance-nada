//import 'package:buy_it/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String  labelText;
  final IconData icon;
 // final Function onClick;
  final Function  onChanged;
  String _errorMessage(String str) {
    switch ( labelText) {
      case ' First Name':
        return 'First Name is empty !';
      case 'Last Name ':
        return 'Last Name is empty !';
      case 'ID':
        return ' ID is empty !';
      case 'PHONE NUMBER':
        return ' PHONE NUMBER is empty !';
      case 'EMAIL':
        return ' EMAIL is empty !';
      case 'PASSWORD':
        return ' PASSWORD is empty !';
      case 'BIRTHDAY':
        return ' BIRTHDAY is empty !';
    }
  }

  CustomTextField(
      {@required this.icon, @required this. labelText, @required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return _errorMessage( labelText);
            // ignore: missing_return
          }
        },
        onSaved: onChanged,
        obscureText:  labelText == 'Enter your password' ? true : false,
       // cursorColor: kMainColor,
        decoration: InputDecoration(
          hintText:  labelText,
          prefixIcon: Icon(
            icon,
         //   color: kMainColor,
          ),
          filled: true,
        //  fillColor: kSecondaryColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}