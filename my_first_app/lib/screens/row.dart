import 'package:flutter/material.dart';
import 'package:my_first_app/Service/userService.dart';
import 'package:my_first_app/Text_widget/text.dart';
import 'package:my_first_app/add_user/user.dart';
import 'package:my_first_app/operations/on_press_opreration.dart';


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
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.black, size: 25),
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
          actions: [
            Icon(
              Icons.checkroom_sharp,
              size: 30,
              color: Colors.black,
            )
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
                        child: Text("Original achilles Leather Sneaker"),
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
                      right: 10,
                      left: 10,
                    )),
                    Container(
                        width: 179,
                        height: 52,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0))),
                        child: Center(
                          child: Text("COLOR:WHITE",
                              style: TextStyle(color: Colors.black)),
                        )),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                        width: 180,
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
                      Text(
                        "PRICE :",
                        style: TextStyle(color: Colors.white),
                      ),
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
                    new Text(
                      "DESCRIPTION",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      widget.user.description ?? '',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 365,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color.fromARGB(255, 137, 136, 136),
                                  width: 1))),
                      child: Center(
                        child: Text(
                          "SIZE & FIT",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.black),
                        ),
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
                        child: Text(
                          "DETAILS & CARE",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.black),
                        ),
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
