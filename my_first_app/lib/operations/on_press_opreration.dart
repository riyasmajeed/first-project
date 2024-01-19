import 'package:flutter/material.dart';
import 'package:my_first_app/add_user/add_data.dart';
import 'package:my_first_app/screens/home.dart';


RedirectToaddPage(context){
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => Adduser()));
 }

RedirectToHomepage(context){
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => Home()));
 }




