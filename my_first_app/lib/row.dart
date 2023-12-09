

import 'package:flutter/material.dart';
 void main() {
   runApp(const MyApp());
 }
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
    
     debugShowCheckedModeBanner: false,
     home: Scaffold(
  body: Container(
     width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    padding: EdgeInsets.only(top: 30),
    child: Column(
      
      children: [
Container(
 
              padding: EdgeInsets.only(bottom: 20,),
            child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
            children: [
              Padding(padding: EdgeInsets.only(right: 10,left: 10)),
               
              // Padding(padding: EdgeInsets.all(10)),
              // Padding(padding: EdgeInsets.only(bottom: 20)),
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
                width: 50,
              ),
              Text("COMMON PROJECTS",
              style: TextStyle(
                fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600
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

Container(
  // width: MediaQuery.of(context).size.width*.83,
  width: 322,
  height: 200,
  child: Row(
    
    children: [
      Image.asset("assets/whi.png")

    ],
  ),
),

Container(
 
child: Column(
  children: [
    Padding(padding: EdgeInsets.only(bottom: 10)),
    Container(
      child: Center(
        child: Text("COMMON PROJECTS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
        
      ),
    ),
     Container(
      child: Center(
        child: Text("Original achilles Leather Sneaker"),
        
      ),
    ),
    Container(
      child: Center(
        child: Text("\$410"),
        
      ),
    ),
    
  ],

),
),

Container(
padding: EdgeInsets.only(top: 10,bottom: 10),
child: Row(
  

  children: [
    
     const Padding(padding: EdgeInsets.only(right: 10,left: 10,)),
    Container(
     
      width: 179,
      height: 52,
       decoration: BoxDecoration(
          border: Border.all(width: 2,color: Color.fromARGB(255, 0, 0, 0))
        ),
       child: Center(
          child: Text("COLOR:WHITE",style: TextStyle(color: Colors.black)),
         )

     
    ),
    SizedBox(width: 7,),
    
     Container(
      width: 180,
      height: 52,
       decoration: BoxDecoration(
          border: Border.all(width: 2,color: Color.fromARGB(255, 0, 0, 0))
        ),
       child: Center(
          child: Text("SIZE:41"),
         )
    )
  ],
),
),
Container(
  // padding: EdgeInsets.only(right: 10,left: 10,),
  width: 365,
  height: 60,
   color: Colors.black,
//  child: Column(
  
//   children: [
    
//      Center(
//     child: Text("ADD TO CARD \$410",
//     style: TextStyle(color: ADD TO CARD \$410),),
//   ),
//   ],
//  ),
child: Center(
  child: Text("ADD TO CARD \$410",
  style: TextStyle(color:Colors.white ),),
),
),

SizedBox(height: 8,),

Container(
   padding: EdgeInsets.only(left: 20,right: 20,),
  // width: 350,
  // height: 50,
  child: Column(
    
    children: [
      new Text("DESCRIPTION",style: TextStyle(
        color: Colors.black,fontWeight:FontWeight.w800
      ),),
      Text("Common Projects leather sneakers have gained cult status thanks.to their minimalist design and superior construction. This whiteversion is perfect for creating crisp city-smart looks", textAlign:TextAlign.center,),


    ],
  ),
),
SizedBox(height: 5,),
Container(
child: Column(
  children: [
    Container(
      width: 365,
  height: 60,
decoration: BoxDecoration(
  border: Border(top: BorderSide(color: Color.fromARGB(255, 137, 136, 136),width: 1))
),
child: Center(child: Text("SIZE & FIT",style: TextStyle(
  fontWeight: FontWeight.w800,color: Colors.black
),),),
    ),

  Container(
      width: 365,
  height: 60,
decoration: BoxDecoration(
  border: Border(top: BorderSide(color: Color.fromARGB(255, 137, 136, 136),width: 1))
),
child: Center(child: Text("DETAILS & CARE",style: TextStyle(
  fontWeight: FontWeight.w800,color: Colors.black
),),),
    )
 
  ],
),
),


      ],
    ),
  ),
      
            
  
     ),       
     
    );
  }
}

  
