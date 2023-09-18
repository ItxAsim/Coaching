import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClickableCard extends StatelessWidget {
  final String title;
  final String description;
  final String duration;
  final VoidCallback onTap;

  MyClickableCard({
    required this.title,
    required this.description,
    required this.duration,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(description),
              SizedBox(height: 8),
              Text('duration: $duration',style: TextStyle(
                color: Colors.red
              ),),
            ],
          ),
        ),
      ),
    );
  }
}