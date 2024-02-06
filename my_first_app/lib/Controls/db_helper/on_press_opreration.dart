import 'package:flutter/material.dart';
import 'package:my_first_app/View/add_data.dart';
import 'package:my_first_app/View/first_home.dart';
import 'package:my_first_app/View/home.dart';


RedirectToaddPage(context){
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => Adduser()));
 }

RedirectToHomepage(context){
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => Home()));
 }

RedirectToMenupage(context){
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => First()));
 }


