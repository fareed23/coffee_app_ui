import 'package:flutter/material.dart';

class CoffeeTypes extends StatelessWidget {
  final String coffeeType;

  const CoffeeTypes({
    Key? key,
    required this.coffeeType,
  }) : super(key: key);
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
