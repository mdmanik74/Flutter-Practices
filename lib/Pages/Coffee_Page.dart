import 'package:flutter/material.dart';

class CoffePage extends StatefulWidget {
  const CoffePage({super.key});

  @override
  State<CoffePage> createState() => _CoffePageState();
}

class _CoffePageState extends State<CoffePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/images/coffee01.png'),
          ),
          const Text(
            'White Cafe Coffee',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$4.00',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
