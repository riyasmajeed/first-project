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
                            Image.network("https://w7.pngwing.com/pngs/113/86/png-transparent-green-sneakers-skate-shoe-nike-nike-sports-shoes-blue-sport-logo.png"),
                            
                            // Image.asset("assets/sh.png"),
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
        
        
 

        }
      ),
      )
    );
  }
}