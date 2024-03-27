import 'package:coffee_shop/Coffee/2nd%20page.dart';
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _currentIndex=0;
  final List<Widget>_pages=[
    secondpage(),
    secondpage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF035023),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFDBF3D9),
        unselectedItemColor: Colors.teal,
        onTap:  (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),
              label: ''),

      ],

),
    );
  }
}
