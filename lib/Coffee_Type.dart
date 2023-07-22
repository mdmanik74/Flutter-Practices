import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType(
      {super.key, required this.coffeeType, required this.isSelected});

  final String coffeeType;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        child: Text(
          coffeeType,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.blue : Colors.white,
          ),
        ),
      ),
    );
  }
}
