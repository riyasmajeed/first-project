import 'package:flutter/material.dart';
import 'package:my_first_app/add_user/add_data.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/row.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _MyAppState();
}

class _MyAppState extends State<First> {
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
    
     debugShowCheckedModeBanner: false,
     home: Scaffold(

     body:Column(
  children: [
        Container(
    
                      padding: EdgeInsets.only(bottom: 20,right: 15,left: 15,top: 25),
    
                    child: Row(
    
                   
    
                    children: [
    
                      
    
                      Container(
    
                       
    
                        child: Icon(Icons.menu_rounded,
    
                        size: 30,
    
                        ),
    
                        
    
                      ),
    
                      SizedBox(
    
                        width: 10,
    
                      ),
    
                       
    
                         Container(
    
         
    
                          
    
                          child: Icon(Icons.search_sharp,
    
                           size: 30,
    
                          ),
    
                          
    
         
    
                        ),
    
                        SizedBox(
    
                        width: 36,
    
                      ),
    
                      Text("COMMON PROJECTS",
    
                      style: TextStyle(
    
                        fontWeight: FontWeight.w500,
    
                        fontSize: 20,color: Colors.black
    
                      ),
    
                      ),
    
                      SizedBox(width: 50,),
    
                        Container(
    
         
    
                         
    
                          
    
                          child:
    
                          
    
                          Icon(Icons.checkroom_sharp,
    
                           size: 30,
    
                          ),
    
                          
    
         
    
                        ),
    
         
    
                    ],
    
         
    
         
    
                  ),
    
            
  
                  ),

     
     
     
     
     TextButton(
  onPressed: () {
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => Home()));
  },
   child: Container(
        width: 180,
        height: 52,
         decoration: BoxDecoration(
            border: Border.all(width: 2,color: Color.fromARGB(255, 0, 0, 0))
          ),
         child: Center(
            child: Text("HOME"),
           )
      ),
 ),
 TextButton(
  onPressed: () {
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => Adduser()));
  },
   child: Container(
        width: 180,
        height: 52,
         decoration: BoxDecoration(
            border: Border.all(width: 2,color: Color.fromARGB(255, 0, 0, 0))
          ),
         child: Center(
            child: Text("ADD"),
           )
      ),
 ),
  ]
     ),
            
  
     )    
     
    );
  }
}
