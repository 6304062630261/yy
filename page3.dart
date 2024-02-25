import 'package:flutter/material.dart';
import 'page2.dart';
import 'page3.dart';
import 'page1.dart';
import 'page4.dart';
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Page3')),
    body: Center(child:
    Column(children: [
      SizedBox(height: 30),
      Text('Page 3', textScaleFactor: 2.0),
      SizedBox(height: 60),

    ])
    ),
  );


}
