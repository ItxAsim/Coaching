import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("person"),),
      body: Center(
         child: Column(
           children:[ Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://img.freepik.com/free-photo/medium-shot-man-wearing-vr-glasses_23-2150394443.jpg?w=900&t=st=1690621594~exp=1690622194~hmac=46fdd5026277bedf168fd69de45c62a672da291922b42d7dec7a9839967457a3'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
             Text("example")
         ])
      )
    );
  }
}
