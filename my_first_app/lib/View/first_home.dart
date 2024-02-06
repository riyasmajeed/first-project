import 'package:flutter/material.dart';
import 'package:my_first_app/View/Widgets/Icons_widget/icons.dart';
import 'package:my_first_app/View/Widgets/Text_widget/text.dart';
import 'package:my_first_app/View/add_data.dart';
import 'package:my_first_app/View/home.dart';
import 'package:my_first_app/View/Widgets/row.dart';
import 'package:my_first_app/Controls/db_helper/on_press_opreration.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _MyAppState();
}

class _MyAppState extends State<First> {
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
                    icon: const Icon(Icons.menu_rounded,
                        color: Colors.black, size: 25),
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
          body: Center(
            child: Column(children: [
              TextButton(
                onPressed: () {
                  RedirectToHomepage(context);
                },
                child: Container(
                    width: 180,
                    height: 52,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Color.fromARGB(255, 0, 0, 0))),
                    child: Center(
                      child: Text("HOME"),
                    )),
              ),
              TextButton(
                onPressed: () {
                  RedirectToaddPage(context);
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => Adduser()));
                },
                child: Container(
                    width: 180,
                    height: 52,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Color.fromARGB(255, 0, 0, 0))),
                    child: Center(
                      child: Text("ADD"),
                    )),
              ),
            ]),
          ),
        ));
  }
}
