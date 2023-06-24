import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Snackbar Widget',style: TextStyle(color: Colors.white),),),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  
  padding: EdgeInsets.all(60),
  alignment: Alignment.center,
  child: Column(children: [
    ElevatedButton(onPressed: (){
      ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('Thanks for you ! Click Here',style: TextStyle(fontSize: 30.0,color: Colors.red),),
         backgroundColor: Colors.black,
         elevation: 16,
       ),
      );
    },
        child: Text('Show Simple Snackbar'),),
  ],),
),

    );
  }
}