import 'package:flutter/material.dart';
import 'package:my_first_app/Service/userService.dart';
import 'package:my_first_app/add_user/user.dart';
import 'package:my_first_app/row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  late List<User> _userList=<User>[];
  final _userSevice=UserService();

  getAllUserDetails() async{
    var users=await _userSevice.readAlluser();
    _userList=<User>[];
    users.forEach((user){
       setState(() {
         var usermodel=User();
       usermodel.id=user['id'];
       usermodel.brand=user['brand'];
       usermodel.price=user['price'];
       usermodel.description=user['description'];
       _userList.add(usermodel);
       });
    }
   
    );


  }
  @override
  void initState() {
    getAllUserDetails();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var newname =  Text("COMMON PROJECTS",style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                        
                      ),);
   
    var price = Text("\$410");
    var tag = Text("original achilles low sneakers",style: TextStyle(
                        color: Colors.black
                      ),);
    var pre_order = Text
                      ("pre-Order",
                      style:TextStyle( color: Colors.grey));
    return MaterialApp(

      
      home: Scaffold(
        appBar: AppBar(
         backgroundColor: Colors.white,
         title: Center(child: newname),
         leading: const Icon(Icons.search_sharp,
                          size: 30,color: Colors.black,),
           actions: const [ Icon(Icons.checkroom_sharp,
                          size: 30,color: Colors.black,)],               
         
        ),

// body:ListView.builder(
//   itemCount: _userList.length,itemBuilder: (context, index) {
    
//     return Card(
//       child: ListTile(
//         title: Text(_userList[index].brand ?? ''),
//       ),
//     );
//   },
// ),

       body:  ListView.builder(
          scrollDirection: Axis.vertical,
          //  width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
         
          padding: EdgeInsets.only(top: 30,),
        
        itemCount: _userList.length,
        itemBuilder: (context, index) {
          return    Container(
                        
                        padding: EdgeInsets.only(right: 10),
                      
                        
                       
                        width: 195,
                height: 500,
                    //  color: Colors.blue,         
                       child: Card(
                         child: Column(
                          children: [
                            Image.asset("assets/sh.png"),
                            SizedBox(height: 1,),
                           
                            ListTile(

                              title: Center(
                                child: Text(_userList[index].brand ?? '',
                                style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                                  
                                ),
                                ),
                              ),
                            ),
                            SizedBox(height:1),
                           
                             Text(_userList[index].price ?? '',),
                            // price,
                            Text(_userList[index].description ?? '',),
                            
                            
                          ],
                                 
                         ),
                       ),
                      );
        
        
      //     //  child: Column(
          
            
      //       // [
      //       //   Column(
      //       //     children: [
                
      //       //           //  width: MediaQuery.of(context).size.width,
      //       //           //       height: MediaQuery.of(context).size.height,
      //       //       Column(
                    
      //       //         children: [
      //       //           Container(
      //       //               padding: EdgeInsets.only(bottom: 20,right: 15,left: 15),
      //       //             child: Row(
                       
      //       //             children: [
                          
      //       //               Container(
                           
      //       //                 child: Icon(Icons.menu_rounded,
      //       //                 size: 30,
      //       //                 ),
                            
      //       //               ),
      //       //               SizedBox(
      //       //                 width: 10,
      //       //               ),
                           
      //       //                  Container(
                     
                              
      //       //                   child: Icon(Icons.search_sharp,
      //       //                    size: 30,
      //       //                   ),
                              
                     
      //       //                 ),
      //       //                 SizedBox(
      //       //                 width: 36,
      //       //               ),
      //       //               Text("COMMON PROJECTS",
      //       //               style: TextStyle(
      //       //                 fontWeight: FontWeight.w500,
      //       //                 fontSize: 20,color: Colors.black
      //       //               ),
      //       //               ),
      //       //               SizedBox(width: 50,),
      //       //                 Container(
                     
                             
                              
      //       //                   child:
                              
      //       //                   Icon(Icons.checkroom_sharp,
      //       //                    size: 30,
      //       //                   ),
                              
                     
      //       //                 ),
                     
      //       //             ],
                     
                     
      //       //           ),
                
      //       //           ),
      //       //         ],
      //       //       ),
      //       //       Container(
      //       //          child: Row(
      //       //            children: [
      //       //      Container(
                       
      //       //     width: 205,
      //       //     height: 50,
      //       //     decoration: BoxDecoration(
      //       //       border: Border.all(width: 1,color: Color.fromARGB(255, 195, 193, 193))
      //       //     ),
      //       //      child: Center(
      //       //       child: Text("Refine products",
      //       //       style: TextStyle(
      //       //         fontWeight: FontWeight.w400,
      //       //         color: Colors.black
      //       //       ),),
      //       //      )
      //       //      ),
      //       //       Container(
                
      //       //     width: 205,
      //       //     height: 50,
      //       //     decoration: BoxDecoration(
      //       //       border: Border.all(width: 1,color: Color.fromARGB(255, 195, 193, 193))
      //       //     ),
      //       //            child: Center(
      //       //       child: Text("Sort by newest",
      //       //       style: TextStyle(color: Colors.black,
      //       //       fontWeight: FontWeight.w400),),
      //       //      )
                      
      //       //      ),
                       
      //       //            ],
      //       //          ),
                      
      //       //       ),
      //       //         Container(
      //       //             padding: EdgeInsets.only(right: 15,left: 15,top: 20),
      //       //       child: Row(
                    
      //       //         children: [
                      
      //       //           Container(
                        
      //       //             padding: EdgeInsets.only(right: 10),
                      
                        
                       
      //       //             width: 195,
      //       //     height: 254,
      //       //         //  color: Colors.blue,         
      //       //            child: Card(
      //       //              child: Column(
      //       //               children: [
      //       //                 Image.asset("assets/sh.png"),
      //       //                 SizedBox(height: 1,),
      //       //                 // newname,
      //       //                 ListTile(
      //       //                   title: Text(_userList[index].BRAND ?? '',
      //       //                   style: TextStyle(
      //       //                     color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                                
      //       //                   ),
      //       //                   ),
      //       //                 ),
      //       //                 SizedBox(height:1),
      //       //                 tag,
      //       //                 price,
      //       //                 pre_order 
                            
      //       //               ],
                                 
      //       //              ),
      //       //            ),
      //       //           ),
      //       //            Container(
                       
                        
                         
      //       //             width: 186,
      //       //     height: 254,
                       
                
      //       //       //  padding: EdgeInsets.only(right: 3),
      //       //            child: Column(
      //       //             children: [
                        
      //       //               Image.asset("assets/sho.png",
      //       //               ),
      //       //               SizedBox(height: 1,),
      //       //               newname,
                         
      //       //               tag,
      //       //               price,
      //       //               pre_order 
      //       //             ],
                      
      //       //            ),
      //       //           )
      //       //         ],
      //       //       ),
                      
      //       //      ),
                      
      //       //            Container(
      //       //         padding: EdgeInsets.only(right: 15,left: 15,top: 10),
      //       //       child: Row(
      //       //         children: [
      //       //           Container(
                       
      //       //             padding: EdgeInsets.only(right: 10),
                        
      //       //             //  width: MediaQuery.of(context).size.width*.47,
      //       //             width: 193,
      //       //     height: 252,
                      
      //       //            child: Column(
      //       //             children: [
                          
      //       //               Image.asset("assets/new.png"),
      //       //               SizedBox(height: 1,),
                         
      //       //               newname,
                         
      //       //               // Text("original achilles low sneakers", style: TextStyle(
      //       //               //   color: Colors.black
      //       //               // ),
      //       //               // ),
      //       //               // Text("\$410"),
      //       //               // Text
      //       //               // ("pre-Order",
      //       //               // style:TextStyle( color: Colors.grey)) 
      //       //                tag,
      //       //               price,
      //       //               pre_order 
      //       //             ],
                      
      //       //            ),
      //       //           ),
      //       //            InkWell(
      //       //           // onTap: () {
      //       //           //             Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PageUp(),));
      //       //           //           },
      //       //           onTap: () {
      //       //         Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) =>  PageUp()));
      //       //         },
                      
      //       //              child: Container(
                         
      //       //               width: 187,
      //       //                    height: 250,
                              
      //       //                      //  padding: EdgeInsets.only(right: 3),
      //       //              child: Column(
      //       //               children: [
      //       //                 Image.asset("assets/shoe.png"),
      //       //                 SizedBox(height: 1,),
                           
      //       //                 newname,
      //       //                 tag,
      //       //               price,
      //       //               pre_order  
                            
      //       //               ],
                       
      //       //              ),
      //       //             ),
      //       //            )
      //       //         ],
      //       //       ),
                      
      //       //      ),
      //       //           Container(
      //       //         padding: EdgeInsets.only(right: 15,left: 15,top: 10),
      //       //       child: Row(
      //       //         children: [
      //       //           Container(
                       
      //       //             padding: EdgeInsets.only(right: 10),
                        
      //       //             //  width: MediaQuery.of(context).size.width*.47,
      //       //             width: 193,
      //       //     height: 252,
                      
      //       //            child: Column(
      //       //             children: [
                          
      //       //               Image.asset("assets/new.png"),
      //       //               SizedBox(height: 1,),
      //       //               newname,
      //       //               tag,
      //       //               price,
      //       //               pre_order 
                          
      //       //             ],
                      
      //       //            ),
      //       //           ),
      //       //            InkWell(
      //       //           // onTap: () {
      //       //           //             Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PageUp(),));
      //       //           //           },
      //       //           onTap: () {
      //       //         Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => const PageUp()));
      //       //         },
                      
      //       //              child: Container(
                         
      //       //               width: 187,
      //       //                    height: 250,
                              
      //       //                      //  padding: EdgeInsets.only(right: 3),
      //       //              child: Column(
      //       //               children: [
      //       //                 Image.asset("assets/shoe.png"),
      //       //                 SizedBox(height: 1,),
      //       //                 newname, 
      //       //                 //  tag,
      //       //               price,
      //       //               pre_order 
      //       //               ],
                       
      //       //              ),
      //       //             ),
      //       //            )
      //       //         ],
      //       //       ),
                      
      //       //      )
                      
      //       //     ],
      //       //   ),
      //       // ];
           
      //        }
      //      ),


        }
      ),
      )
    );
  }
}