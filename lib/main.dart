import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: createTabBar(),
            title: Text('Flutter TabBar Example'),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Car")),
              Center(child: Text("Transit")),
              Center(child: Text("Bike")),
              Center(child: Text("Boat")),
              Center(child: Text("Railway")),
              Center(child: Text("Bus"))
            ],
          ),
        )
    );
  }

  TabBar createTabBar()  {
    return TabBar(
      tabs: [
        Row (children: [Icon(Icons.directions_car), SizedBox(width:5), Text("Car")]),
        Row (children: [Icon(Icons.directions_transit), SizedBox(width:5), Text("Transit")]),
        Row (children: [Icon(Icons.directions_bike), SizedBox(width:5), Text("Bike")]),
        Row (children: [Icon(Icons.directions_boat), SizedBox(width:5), Text("Boat")]),
        Row (children: [Icon(Icons.directions_railway), SizedBox(width:5), Text("Railway")]),
        Row (children: [Icon(Icons.directions_bus), SizedBox(width:5), Text("Bus")]),
      ],
      isScrollable: true,
    );
  }
}
/*
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('BottomApp Bar Example'),),
        body: Center(
          child: Text('Flutter Bottom App Bar Design',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.0),),
        ),
        bottomNavigationBar:BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: (){},),
              IconButton(
                icon: Icon(Icons.access_alarm),
                onPressed: (){},),
              IconButton(
                icon: Icon(Icons.add_a_photo),
                onPressed: (){},),
              IconButton(
                icon: Icon(Icons.exit_to_app,color: Colors.red,),
                onPressed: (){},),
            ],
          ),
          shape: CircularNotchedRectangle(),
        ),
        floatingActionButton: FloatingActionButton.extended (
          elevation: 4.0,
          icon: const Icon(Icons.add),
          label: const Text('Add a task'),
          onPressed: () {},
        ),

      ),
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
*/
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