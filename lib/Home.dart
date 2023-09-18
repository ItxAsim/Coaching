import 'package:coatching/Dashboard.dart';
import 'package:coatching/favorites.dart';
import 'package:coatching/payment.dart';
import 'package:coatching/sidemanue.dart';
import 'package:coatching/videoleacture.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'botomnavigation.dart';
import 'clickablecard.dart';

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {


  @override
  Widget build(BuildContext context) {
    int slectedindex=0;
    return Stack(
        children :[Scaffold(
          appBar: AppBar(
            title: Text("COATCHING APP"),
            centerTitle: true,
          ),

          drawer: SideMenu(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text("cources",style: TextStyle(
                  fontSize: 30,
                ),),
            MyClickableCard(
              title: 'JavaScript Tutorial In Hindi',
              description: "Video Introduction  – JavaScript Introduction Basics of JavaScript, Coding First Line of JavaScript, Brief Overview of JS, Websites & Web Technologies, Html, CSS & JavaScript Overview, Deep Dive in JavaScript, Downloading & Installing VS Code IDE, Writing JS in VS Code, Getting Started With JavaScript, JavaScript Console API, Different ways to write JavaScript, Variables in JavaScript, Comments in JavaScript, Data Types in JavaScript, Operators in JavaScript, Functions in JavaScript, Conditional Statements in JavaScript, Loops in JavaScript, Break and Continue Statements, Array Methods, String Methods, Dates in JS, JavaScript DOM Manipulation, JavaScript Events, JavaScript SetTimeout and SetInterval, Local Storage in JavaScript, About JSON, JavaScript Versions, Project – 1 (JavaScript Clock), Project – 2 (An Amazing JavaScript To-do List), How to Get Free Web Development Course, The END (Thank You)",
              duration: '3:44:15 hours',
              onTap: () {
                // Handle card tap here (e.g., navigate to a detail screen).
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoLeacture(videoId: "hKB-YGF14SY")));
              },
            ),
                MyClickableCard(
                  title: 'MERN Stack Full Tutorial | Web Development in MERN Stack | Complete All-in-One Course2023 | 11 Hours',
                  description: "In this free course on MERN Stack by Azadchaiwala, you will have the opportunity to build a crypto blog app and learn the ins and outs of the MERN stack. Throughout the course, you'll not only gain practical experience in both frontend and backend development, but you'll also learn best practices for each.By the end of the course, you'll be equipped with the knowledge and skills to deploy your app, making it accessible to users worldwide. So, whether you're a beginner or an experienced developer, this course is the perfect opportunity to expand your skill set and take your career to the next level.",
                   duration: '11:24:15 hours',
                  onTap: () {
                    // Handle card tap here (e.g., navigate to a detail screen).
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoLeacture(videoId: "IGF3I85Ks2k")));
                  },
                ),


              ],
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
            ], selectedIndex:slectedindex ,
          ),
    ])
    ;
  }
}
