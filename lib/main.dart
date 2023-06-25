import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xffC4DFCB),
        appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.black,),
        title: Text('Flutter Custom Bottom',style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 25,fontWeight: FontWeight.w600),),
        centerTitle: true,
          backgroundColor: Colors.white,
        ),
        ),
    );
  }
}

