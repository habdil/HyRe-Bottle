import 'package:flutter/material.dart';

class HydrationTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '100',
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Text(
          'of 2000 ml',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 10),
        Icon(Icons.add, size: 30, color: Colors.black54),
      ],
    );
  }
}
