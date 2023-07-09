import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

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
        appBar: AppBar(title: const Text('CheckBoxList Widget',),backgroundColor: Colors.deepOrange,),
        body: const MyHomePage(),
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
  late bool _valueC=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CheckboxListTile(
      value: _valueC,
      onChanged: (value) {
        setState(() {
          _valueC=value!;
        });
        print(value);
      },
      title: Text('Title'),
      subtitle: Text('Subtitle'),
      secondary: Container(child: Icon(Icons.favorite)),
      activeColor: Colors.red,
      checkColor: Colors.black,
      selected: _valueC,
      controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  
  }
}