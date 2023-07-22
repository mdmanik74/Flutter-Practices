import 'package:codes/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.dashboard_rounded, color: kblue)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_rounded, color: kblue)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hi Users',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' Today is a good day \n to learn something new !',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          wordSpacing: 2.5,
                          height: 1.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
