import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title of Page 2"),
      ),
      body: const Center(
        child: Text('Page 2'),
      ),
      
      backgroundColor: Colors.lightGreen[100],
    );
  }
}

Widget v PageText() {
  return Container(
    height: 200,
    width: 200,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Column(children: const [
      TextField(
        decoration: InputDecoration(
            hintText: 'Enter Your Name',
            labelText: 'User Name',
            labelStyle: TextStyle(color: Colors.orange, fontSize: 14)),
      )
    ]),
  );
}
