import 'package:coatching/Login.dart';
import 'package:coatching/Person.dart';
import 'package:coatching/Settings.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    Future<void> signOut() async {
    await _auth.signOut();
  }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>myhome())); // Close the drawer
              // You can navigate to the home page or perform any desired action here
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>settings())); // Close the drawer
              // You can navigate to the settings page or perform any desired action here
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Person()));
              // You can navigate to the profile page or perform any desired action here
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              signOut();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              // Perform logout action here
            },
          ),
        ],
      ),
    );
  }
}