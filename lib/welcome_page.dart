import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
        child: SafeArea(
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Text(
                    'Here to Get',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF363f93),
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF363f93),
                        fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Your Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return 'Enter corrcect name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Your Number',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                              .hasMatch(value)) {
                        return 'Enter corrcect Number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Your Email',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                              .hasMatch(value)) {
                        return 'Enter corrcect email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sign Up',
                        style:
                            TextStyle(fontSize: 22, color: Color(0xFF363f93)),
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xFF363f93),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
