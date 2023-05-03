

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List Title Demo',
      home: ListTileWidget(),
    );
  }
}

class ListTileWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('List Title Demo'),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ),
        title: Text('Person 01',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Text('Image Network is a package that allows you to render images on the web using CanvasKit without having problems'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          print('Person 01');
        },
        dense: true,
        selected: false,
        enabled: true,
      ),

    );
  }
}