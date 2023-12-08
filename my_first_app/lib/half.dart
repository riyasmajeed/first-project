import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyFlexWidget(),
      ),
    );
  }
}

class MyFlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Text 1'),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text('Text 2'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
            child: const Center(
              child: Text('Text 3'),
            ),
          ),
        ),
      ],
    );
  }
}
