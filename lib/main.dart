import 'package:flutter/material.dart';
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Checkbox Example',style: TextStyle(color: Colors.white),),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool checkBoxValue=false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CheckboxListTile(
            title: const Text('This is the checkbox with label'),
            value: checkBoxValue,
            activeColor: Colors.green,
            onChanged: (bool? newValue) {
              setState(() {
                checkBoxValue = newValue!;
              });
            }));
  }
}