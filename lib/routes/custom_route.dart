
import 'package:another_chance_app/Loginpage.dart';
import 'package:another_chance_app/firstpage.dart';
import 'package:another_chance_app/routes/route-names.dart';
import 'package:another_chance_app/signup.dart';
import 'package:flutter/material.dart';

class CustomRoute {


// ignore: missing_return
static Route<dynamic> allRoutes(RouteSettings settings){

switch(settings.name) {
  case firstpageRoute:
     return MaterialPageRoute(builder: (_)  => firstpage());

  case firstpageRoute:
    return MaterialPageRoute(builder: (_)  => LoginPage());

  case firstpageRoute:
    return MaterialPageRoute(builder: (_)  => signup());


}


}



}