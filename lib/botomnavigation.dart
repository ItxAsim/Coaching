import 'package:flutter/material.dart';

import 'Dashboard.dart';
import 'Home.dart';
import 'favorites.dart';

class bottomnavigation extends StatefulWidget {
  final List<BottomNavigationBarItem> items;

 var  selectedIndex;
   bottomnavigation({super.key,required this.items, this.selectedIndex,});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  @override
 // int _selectedIndex = 0;




  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => myhome()),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => dashboard()),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => favorites()),
          );
          break;

      };
    });}
  Widget build(BuildContext context) {
    return Container(
        child: Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavigationBar(
            items: widget.items,
            currentIndex:  widget.selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      );

  }
}
