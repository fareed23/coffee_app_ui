import 'package:flutter/material.dart';

class CoffeeTypes extends StatelessWidget {
  final coffeeType;

  CoffeeTypes({required this.coffeeType});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          coffeeType,
          style: TextStyle(color: Colors.grey[400], fontSize: 15),
        ),
      ],
    );
  }
}
