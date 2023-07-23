import 'package:codes/constants.dart';
import 'package:flutter/material.dart';

class CategPage extends StatefulWidget {
  const CategPage({super.key});

  @override
  State<CategPage> createState() => _CategPageState();
}

class _CategPageState extends State<CategPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Categories',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              'See All',
              style: TextStyle(fontSize: 16, color: kblue),
            ),
          )
        ],
      ),
    );
  }
}
