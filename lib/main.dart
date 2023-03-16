import 'package:flutter/material.dart';


void main () => runApp(Myapp());
class Myapp extends StatelessWidget{
  @override

  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("This is Column"),),
          body: Row(
            children: [
              Container(
            height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(width: 10,),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}






















/*
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 1000,
            width: 500,
            decoration: BoxDecoration(color: Colors.red),
            child: Text("Hellow Bangladesh. My country",style: TextStyle(fontSize: 25,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

*/

// safe area
/*
void main () =>runApp(MyApp());

class MyApp extends StatelessWidget{

  @override

  Widget build (BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        left: false,
        child: Scaffold(
          body: Center(
            child: Text("In publishing and graphic design, Lorem ipsum is a placeholder"
                " text commonly used to demonstrate the visual form of a document or a "
                "typeface without relying on meaningful content. Lorem ipsum may be used "
                "as a placeholder before final copy is available.",style: TextStyle(fontSize: 35),),
          ),
        ),
      ),
    );
  }
}



*/









/* void main () =>runApp(MyApp());
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


 */