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
      body: Align(
        alignment: Alignment.bottomRight,
        heightFactor: 2.0,
        child: ElevatedButton(
          child: Text('Button'),
          onPressed: (){},
        ),
      ),
    );
  }
}
