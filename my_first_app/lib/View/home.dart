import 'package:flutter/material.dart';
import 'package:my_first_app/Controls/db_helper/Service/userService.dart';
import 'package:my_first_app/Controls/get_all_user.dart';
import 'package:my_first_app/View/Widgets/Icons_widget/icons.dart';
import 'package:my_first_app/View/Widgets/Text_widget/text.dart';
import 'package:my_first_app/Models/user.dart';
import 'package:my_first_app/Controls/db_helper/on_press_opreration.dart';
import 'package:my_first_app/View/Widgets/row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
   late List<User> _userList = <User>[];
 
  @override
void initState() {
  super.initState();
  _loadUserDetails();
}

  Future<void> _loadUserDetails() async {
  List<User> userList = await getAllUserDetails();
  setState(() {
    _userList = userList;
  });
}

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: commonproject,
        centerTitle: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: IconButton(
                icon:
                    arrow(),
                onPressed: () {
                  RedirectToMenupage(context);
                },
              ),
            ),
            Flexible(
              flex: 1,
              child: IconButton(
                icon: Search_icon(),
                onPressed: () {},
              ),
            ),
          ],
        ),
        actions: const [
          icon2
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 17,
          ),
          scrollDirection: Axis.vertical,

          //  width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,

          padding: const EdgeInsets.only(
            top: 25,
          ),
          itemCount: _userList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Card(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (Context) => PageUp(
                                    user: _userList[index],
                                  )));
                        },
                        child: SizedBox(
                          child: Image.network(
                            _userList[index].imageurl ?? '',
                            fit: BoxFit.cover,
                            //  "https://w7.pngwing.com/pngs/113/86/png-transparent-green-sneakers-skate-shoe-nike-nike-sports-shoes-blue-sport-logo.png",
                             height: 149,
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            _userList[index].brand ?? '',
                            style: const TextStyle(
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
