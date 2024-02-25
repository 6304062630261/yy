import 'package:flutter/material.dart';
import 'page1add.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Home')),
    body: Center(child: Text('Home Page')),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // ไปยังหน้า Page1add
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Page1Add()),
        );
      },
      child: Icon(Icons.add),
    ),
  );
}
