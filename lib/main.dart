import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),

          ],),title: Text('Flutter Appbar '),),
          body: TabBarView(
            children: [

                  Center(child: Text("The following example shows a bottom navigation bar with four icons: favorites; music note; places; news. Bottom navigation bar with favorites, music note,")),
                  Center(child: Text("The following example shows a bottom navigation bar with four icons: favorites; music note; places; news. Bottom navigation bar with favorites, music note,")),

            ],
          ),
        ),
    );
  }
}

/*
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

*/