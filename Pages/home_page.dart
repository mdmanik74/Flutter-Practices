// ignore_for_file: prefer_const_constructors

import 'package:codes/Pages/constants.dart';
import 'package:codes/Pages/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kblue,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/welcome.png")),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: kblue,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        Text(
                          "Learning Everything",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Learn with pleasure with \n us, where you are !',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              color: kpink,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
