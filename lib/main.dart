import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:  Text('Flutter Circular Progress Indicator'),),
        body: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.red,
            valueColor: new AlwaysStoppedAnimation(Colors.white),
            semanticsLabel: Navigator.defaultRouteName,
          ),
        ),
      ),
    );
  }
}