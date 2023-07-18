import 'dart:js';

import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
   Page2({
    Key? key
  }) : super(key: key);
   String texts='';
get texts => ModalRoute.of(context as BuildContext)?.settings.arguments as String;
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
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('texts', texts));
  }
}
