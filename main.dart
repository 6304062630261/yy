
import 'package:flutter/material.dart';
import 'page2.dart';
import 'page3.dart';
import 'page1.dart';
import 'page4.dart';
void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState(); //_MyappStateเก็บสถานะของ widgetMyapp
}

class _MyappState extends State<Myapp> {
  int _selectedIndex = 0; //_selectedIndex เก็บดัชนีของหน้าปัจจุบันเริ่มต้นค่าเป็น 0 = หน้าแรก

  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4()
  ];//_pages เก็บรายการ widget ของหน้าต่างๆ

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override //เมธอด build สร้าง widget ของหน้าปัจจุบัน รับ context ของ widget ปัจจุบัน
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreenAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document),
            label: 'Page 4',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black, // Ensure text contrast
        unselectedItemColor: Colors.grey[600], // Ensure text contrast
        selectedIconTheme: IconThemeData(color: Colors.black), // Ensure icon contrast
      ),
    ),
  );
}

// No longer needed as navigation is handled by BottomNavigationBar
// class HomePage extends StatelessWidget {
//   ... (removed code for buttons and navigation)
// }
