import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World'),),
        body: Center(
          child: Text('First Flutter App',style: TextStyle(fontSize:30.0,color: Colors.red)),
        ),
        drawer:(width: 200,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Text('Mdmanik@gmail.com',style: TextStyle(fontSize:15.0,color: Colors.white),),
                decoration: BoxDecoration(color: Colors.red),
              ),
             ListTile(
               trailing: Icon(Icons.browse_gallery),
           title: Text('Gallary'),

             ),
              ListTile(
                trailing: Icon(Icons.browse_gallery),
                title: Text('Gallary'),

              ),
              ListTile(
                title: Text("Flutter"),
                subtitle: Text("https://baransel.dev"),
                trailing: Icon(Icons.auto_awesome), //icon in the end
              ),
            ],
          ),
        ) ,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.green,
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: 'Increment Counter',
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
    );
  }
}