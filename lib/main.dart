import 'package:flutter/material.dart';
import 'CalculatorButton.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  bool darkMode=false;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF28527a),
        appBar: AppBar(title: Text('Flutter Calculator',style: TextStyle(color: Colors.white,),),backgroundColor: Colors.deepOrange,),
        body: MyHomePage(),

      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override

  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
          children: const [
            CalculatorButton(text:'9'),
            CalculatorButton(text:'9'),
            CalculatorButton(text:'9'),
            CalculatorButton(text:'9'),


        ],
      ),
        ],
      ),
    );
  }
}