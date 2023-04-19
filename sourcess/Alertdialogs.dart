/*
import 'package:flutter/material.dart';

class Alertdialogs extends StatelessWidget {
  const Alertdialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text("Are You Sure"),
            content: ("This Message Deleted"),
            actions: [
              TextButton(
                onPressed: ()  => Navigator.pop(context,'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
      child: const Text('Show Dialog'),
    );
  }
}



 */