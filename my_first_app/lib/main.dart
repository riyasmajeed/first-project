

import 'package:flutter/material.dart';
import 'package:my_first_app/View/first_home.dart';



 void main() {
   runApp(const MyApp());
 }
 class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return   const MaterialApp(
    
     debugShowCheckedModeBanner: false,
     home: Scaffold(
body:  

 First()
 
),

    );
  }
}

  
