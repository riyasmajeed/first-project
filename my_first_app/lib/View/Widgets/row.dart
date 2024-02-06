import 'package:flutter/material.dart';
import 'package:my_first_app/Controls/db_helper/Service/userService.dart';
import 'package:my_first_app/View/Widgets/Icons_widget/icons.dart';
import 'package:my_first_app/View/Widgets/Text_widget/text.dart';
import 'package:my_first_app/Models/user.dart';
import 'package:my_first_app/Controls/db_helper/on_press_opreration.dart';

class PageUp extends StatefulWidget {
  final User user;
  const PageUp({super.key, required this.user});

  @override
  State<PageUp> createState() => _PageUpState();
}

class _PageUpState extends State<PageUp> {
  @override
  Widget build(BuildContext context) {
  
   
  
   
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  icon:arrow(),
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
icon2,
          
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                // width: MediaQuery.of(context).size.width*.83,
                width: 322,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(widget.user.imageurl ?? '')
                    // Image.asset("assets/whi.png")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                      child: Center(
                        child: Text(widget.user.brand ?? ''),
                      ),
                    ),
                    Container(
                      child: Center(
                        child:
                       subtitle,
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(widget.user.price ?? ''),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(
                      right: 17,
                      left: 5,
                    )),
                    Container(
                     
                        width: 179,
                        height: 52,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0))),
                        child: Center(
                          child:
                          num1Boxname
                        )),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                        width: 179,
                        height: 52,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0))),
                        child: Center(
                          child: Text("SIZE:41"),
                        ))
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(right: 10,left: 10,),
                width: 365,
                height: 60,
                color: Colors.black,

                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    num2Boxname,
                      Text(
                        widget.user.price ?? '',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                // width: 350,
                // height: 50,
                child: Column(
                  children: [
                    description,
                    Text(
                      widget.user.description ?? '',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 365,
                      height: 60,
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color.fromARGB(255, 137, 136, 136),
                                  width: 1))),
                      child: Center(
                        child: 
                        Size,
                      ),
                    ),
                    Container(
                      width: 365,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color.fromARGB(255, 137, 136, 136),
                                  width: 1))),
                      child: Center(
                        child:
                         Details(),
                      ),
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
