import 'package:flutter/material.dart';

void main () =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(child: Text("This is my first App", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
          ,),),
        appBar: AppBar(title: const Text("Home Page"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.access_alarm),)
          ],
        ),
      ),
    );
  }
}