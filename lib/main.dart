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
        appBar: AppBar(title: Text('Column Widget',style: TextStyle(color: Colors.white),),),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          leading: Container(
            height: 20.0,
            width: 20.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,color: Colors.red,
            ),
          ),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),

        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),
        ListTile(
          title: Text('Item One',style: TextStyle(fontSize: 20.0),),
          trailing: Icon(Icons.arrow_back),
        ),


      ],
    );
  }
}



/*
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
        appBar: AppBar(title: Text('Container Widget',style: TextStyle(color: Colors.white),),),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(

      height: 200,
      width: 200.0,
      alignment: Alignment.center,
        margin: EdgeInsets.all(50.0),
      padding: EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 10.0,
        ),
      ),
      transform: Matrix4.rotationX(.5),
    );
  }
}

*/

/*
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
       appBar: AppBar(title: Text('Build Using Stateful Widget',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
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
  String txt ="";
  @override
  void initState(){
    txt="Hello Bangladesh";
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt,style: TextStyle(color: Colors.red,fontSize: 20,),),
        ElevatedButton(onPressed: (){
          setState(() {
            txt="Welcome to Login Page";
          });
          print('Click Here $txt');
        }, child: Text('Change'))
      ],
    ),
    );
  }
}

*/
