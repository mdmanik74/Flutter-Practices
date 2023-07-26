import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 185, 184, 183),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
        child: SafeArea(
          child: Form(
              child: Column(
            children: const [
              Text(
                'Here to Get',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome to',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
