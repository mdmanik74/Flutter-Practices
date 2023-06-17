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
