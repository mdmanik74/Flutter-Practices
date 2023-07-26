import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen(imgList, {super.key});

  // ignore: recursive_getters
  

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.imgList,
          style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      )),
    );
  }
}
