import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title of Page 2"),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Back Button'))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
