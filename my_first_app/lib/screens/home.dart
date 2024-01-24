import 'package:flutter/material.dart';
import 'package:my_first_app/Service/userService.dart';
import 'package:my_first_app/Text_widget/text.dart';
import 'package:my_first_app/add_user/user.dart';
import 'package:my_first_app/operations/on_press_opreration.dart';
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
        usermodel.imageurl = user['imageurl'];
        
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
    
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         title:  commonproject,
         centerTitle: true,
        leading: 
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black, size: 25),
                  onPressed: () {
                   RedirectToMenupage(context);
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  icon: const Icon(Icons.search, color: Colors.black, size: 25),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        

        actions:  [
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Card(
                  child: Column(
                    children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (Context) => PageUp(user: _userList[index],)));
                      },
                        child: SizedBox(
                          child: Image.network(
                            
                            _userList[index].imageurl ?? '',
                            //  "https://w7.pngwing.com/pngs/113/86/png-transparent-green-sneakers-skate-shoe-nike-nike-sports-shoes-blue-sport-logo.png",
                            // height: 149,
                          ),
                        ),
                      ),

                      Container(
                        child: Center(
                          child: Text(
                            _userList[index].brand ?? '',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1),
                          ),
                        ),

                        // subtitle:Text(_userList[index].price ?? '',),
                      ),
                      Text(
                        _userList[index].price ?? '',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _userList[index].description ?? '',
                          ),
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
