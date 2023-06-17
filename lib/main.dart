import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
     home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{



  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        print('OnTap');
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle, color: Colors.blue),
       child: Center(child: Text('Ok'),
       ),
       ),
      );

  }
}