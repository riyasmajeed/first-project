

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
      // padding: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 30,),
    //  padding: EdgeInsets.only(top: 30),
       child: Column(
      
        
        children: [
        
          // Padding(padding: EdgeInsets.all(2)),
          Container(
              padding: EdgeInsets.only(bottom: 20,right: 15,left: 15),
            child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
            children: [
              // Padding(padding: EdgeInsets.only(right: 10,left: 10)),
               
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
          Container(
     child: Row(
       children: [
         Container(
       
        width: 205,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: Color.fromARGB(255, 195, 193, 193))
        ),
         child: Center(
          child: Text("Refine products",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black
          ),),
         )
         ),
          Container(
        
        width: 205,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: Color.fromARGB(255, 195, 193, 193))
        ),
       child: Center(
          child: Text("Sort by newest",
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.w400),),
         )

         ),
       
       ],
     ),

          ),
            Container(
                padding: EdgeInsets.only(right: 15,left: 15,top: 20),
          child: Row(
            
            children: [
              
              Container(
                
                padding: EdgeInsets.only(right: 10),

                
                //  width: MediaQuery.of(context).size.width*.47,
                width: 195,
        height: 254,
    //  color: Colors.blue,         
               child: Column(
                children: [
                  Image.asset("assets/sh.png"),
                  SizedBox(height: 1,),
                  const Text("COMMON PROJECTS",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                  ),),
                  SizedBox(height:1 ,),
                  Text("original achilles low sneakers",style: TextStyle(
                    color: Colors.black
                  ),),
                  Text("\$410"),
                  Text
                  ("pre-Order",
                  style:TextStyle( color: Colors.grey)) 
                  
                ],

               ),
              ),
               Container(
               
                
                 
                width: 186,
        height: 254,
       
        
          //  padding: EdgeInsets.only(right: 3),
               child: Column(
                children: [
                  Image.asset("assets/sho.png"),
                  SizedBox(height: 1,),
                  Text("COMMON PROJECTS",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                  ),),
                 
                  Text("original achilles low sneakers",style: TextStyle(
                    color: Colors.black
                  ),),
                  Text("\$410"),
                  Text
                  ("pre-Order",
                  style:TextStyle( color: Colors.grey)) 
                  
                ],

               ),
              )
            ],
          ),

         ),

 Container(
  padding: EdgeInsets.only(right: 15,left: 15,top: 10),
          child: Row(
            children: [
              Container(
               
                padding: EdgeInsets.only(right: 10),
                
                //  width: MediaQuery.of(context).size.width*.47,
                width: 193,
        height: 252,
              
               child: Column(
                children: [
                  
                  Image.asset("assets/new.png"),
                  SizedBox(height: 1,),
                  Text("COMMON PROJECTS",
                  style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                  ),),
                  Text("original achilles low sneakers", style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                  Text("\$410"),
                  Text
                  ("pre-Order",
                  style:TextStyle( color: Colors.grey)) 
                  
                ],

               ),
              ),
               Container(
               
                width: 187,
        height: 250,
       
          //  padding: EdgeInsets.only(right: 3),
               child: Column(
                children: [
                  Image.asset("assets/shoe.png"),
                  SizedBox(height: 1,),
                  Text("COMMON PROJECTS",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                  ),),
                 
                  Text("original achilles low sneakers",style: TextStyle(
                    color: Colors.black
                  ),),
                  Text("\$410"),
                  Text
                  ("pre-Order",
                  style:TextStyle( color: Colors.grey)) 
                  
                ],

               ),
              )
            ],
          ),

         )


        ],
         
       ),
     ),
            
  
     ),       
     
    );
  }
}

  
