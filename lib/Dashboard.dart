import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'botomnavigation.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    int selectedindex=1;
    return Stack(
      children: [Scaffold(
        body: Center(
          child: Container(
            child: Text("dashboard"),

          ),
        ),

      ),
        bottomnavigation(
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'dashboard',


            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favorite',
            ),
          ], selectedIndex: selectedindex,
        ),
    ]);

  }
}
