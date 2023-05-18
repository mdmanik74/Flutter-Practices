import 'package:flutter/material.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter ListView'),),
        body: ListView(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.all(16.0),
          color: Colors.blueGrey,
          child: const Center(child: Text('Flutter provides a number of widgets that help you build apps that follow Material Design', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.black54,
              child: const Center(child: Text('Create beautiful apps faster with Flutters collection of visual, structural, platform, and interactive', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.blueGrey[600],
              child: const Center(child: Text('This is all the best Flutter Widgets that you should know if you code Flutter', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.black54,
              child: const Center(child: Text('Flutter provides a number of widgets that help you build apps that follow Material Design', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.blueGrey[600],
              child: const Center(child: Text('This is all the best Flutter Widgets that you should know if you code Flutter', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.black54,
              child: const Center(child: Text('Flutter provides a number of widgets that help you build apps that follow Material Design', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.blueGrey[600],
              child: const Center(child: Text('This is all the best Flutter Widgets that you should know if you code Flutter', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),




          ],
        ),
      ),
    );
  }
}