import 'package:flutter/material.dart';
class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(title: Text("Settings"),),
        ),

      ],
    );
  }
}
