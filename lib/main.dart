import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),

      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Column Example'),),
      body: Center(
          child: Column (
              children: [
                ElevatedButton(child: Text("Button 1"), onPressed:(){}),
                Icon(Icons.ac_unit, size: 48, color: Colors.blue),
                ElevatedButton(
                    child: Text("Button 2"),
                    onPressed:(){},
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size.square(70))
                    )
                ),
                ElevatedButton(child: Text("Very Long Button 3"), onPressed:(){}),
              ]
          )
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage> {
  List<Widget> _children = [];
  int idx = 0;

  @override
  void initState()  {
    super.initState();

    this._children = [
      ElevatedButton(
          key: Key(this.idx.toString()),
          child: Text("Btn " + idx.toString()),
          onPressed: (){}
      )
    ];
  }

  void addChildHandler()  {
    this.idx++;
    this.setState(() {
      var newChild = ElevatedButton(
          key: Key(this.idx.toString()),
          child: Text("Btn " + idx.toString()),
          onPressed: (){}
      );
      this._children.add(newChild);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Create new List object:

    this._children = this._children == null? [] : List.from(this._children);

    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter Row Example")
      ),
      body: Center(
          child: Row (
              children:  this._children
          )
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: ()  {
            this.addChildHandler();
          }
      ),
    );
  }
}

 */