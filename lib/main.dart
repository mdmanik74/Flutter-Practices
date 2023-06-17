import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(primarySwatch: Colors.cyan),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Center Example'),),
      body: Center(
        child:Icon(
          Icons.place,
          size: 128,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
