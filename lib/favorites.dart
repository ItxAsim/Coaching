import 'package:coatching/payment.dart';
import 'package:flutter/material.dart';

import 'botomnavigation.dart';
class favorites extends StatefulWidget {
  const favorites({super.key});

  @override
  State<favorites> createState() => _favoritesState();
}

class _favoritesState extends State<favorites> {
  @override
  Widget build(BuildContext context) {
    int selectedindex=2;
    return Stack(
      children:[ Scaffold(
        appBar: AppBar(
          title: Text("favurites"),
        ),
        body: Column(
          children: [
            Text("favorites",style: TextStyle(
              fontSize: 30,
            ),),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentScreen()) );

                  }, child: Text(""
                      "Payment"))

          ],
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
          ], selectedIndex:selectedindex ,
        )
   ] );
  }
}
