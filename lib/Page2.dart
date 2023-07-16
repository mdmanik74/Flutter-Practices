import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
    required this.texts,
  }) : super(key: key);
  final String texts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title of Page 2"),
      ),
      body: SizedBox(
        height: 20,
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: $texts'),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}
