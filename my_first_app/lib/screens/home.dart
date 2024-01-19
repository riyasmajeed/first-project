import 'package:flutter/material.dart';
import 'package:my_first_app/Service/userService.dart';
import 'package:my_first_app/Text_widget/text.dart';
import 'package:my_first_app/add_user/user.dart';
import 'package:my_first_app/screens/row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  late List<User> _userList = <User>[];
  final _userSevice = UserService();

  getAllUserDetails() async {
    var users = await _userSevice.readAlluser();
    _userList = <User>[];
    users.forEach((user) {
      setState(() {
        var usermodel = User();
        usermodel.id = user['id'];
        usermodel.brand = user['brand'];
        usermodel.price = user['price'];
        usermodel.description = user['description'];
        _userList.add(usermodel);
      });
    });
  }

  @override
  void initState() {
    getAllUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var newname = Text(
      "COMMON PROJECTS",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w800, letterSpacing: 1),
    );

    // var price = Text("\$410");
    // var tag = Text("original achilles low sneakers",style: TextStyle(
    //                     color: Colors.black
    //                   ),);
    // var pre_order = Text
    //                   ("pre-Order",
    //                   style:TextStyle( color: Colors.grey));
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: commonproject),
        leading: const Icon(
          Icons.search_sharp,
          size: 30,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.checkroom_sharp,
            size: 30,
            color: Colors.black,
          )
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          scrollDirection: Axis.vertical,
          
         
          //  width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,

          padding: EdgeInsets.only(
            top: 25,
          ),
          itemCount: _userList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 320,
             
              child: Padding(
                
                padding: const EdgeInsets.only(right: 5,left: 5),
                  child: Card(
                        
                          
                          
                           child: Column(
                            
                            children: [
                              
                               SizedBox(
                                

                                child: Image.network("https://w7.pngwing.com/pngs/113/86/png-transparent-green-sneakers-skate-shoe-nike-nike-sports-shoes-blue-sport-logo.png",
                               height: 149, ),
                              
                                ),
                              
                              //  Image.asset("assets/sh.png"),
                              // SizedBox(height: 1,),
                             
                              Container(  
            
                                child: Center(
            
                                  
                                  child: Text(_userList[index].brand ?? '',
                                  style: TextStyle(
                                     color: Colors.black,fontWeight: FontWeight.w800,letterSpacing: 1
                                    
                                  ),
                                  ),
                               
                                  
                                ),
            
                                
                                // subtitle:Text(_userList[index].price ?? '',), 
                              ),
            
            
                              // SizedBox(height:1),
                             
                                 Text(_userList[index].price ?? '',),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text(_userList[index].description ?? '',),
                                   
                                   
                                 ],
                               ),
            
                             
                            
                             
                            ],
                                   
                           ),
                           
                         ),
              ),
            );

          }),
    ));
  }
}
