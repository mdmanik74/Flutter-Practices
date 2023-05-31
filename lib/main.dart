import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<Widget> loadFromFuture() async {

    // <fetch data from server. ex. login>

    return Future.value(new AfterSplash());
  }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        navigateAfterFuture: loadFromFuture(),
        title: new Text('Welcome In SplashScreen',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Welcome In SplashScreen Package"),
          automaticallyImplyLeading: false
      ),
      body: new Center(
        child: new Text("Done!",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),

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
      title: 'o7planning',
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
    return Scaffold (
        appBar: AppBar(
          title: Text("Banner Example"),
        ),
        body:  Banner (
          message: 'Offer 20% off',
          location: BannerLocation.topStart,
          color: Colors.red,
          child: Container(
            height: 150,
            width: double.infinity,
            color: Colors.lightGreen,
            child: Padding (
              padding: EdgeInsets.all(16),
              child: Row (
                children: [
                  Image.network (
                      "https://raw.githubusercontent.com/o7planning/rs/master/flutter/fast_food.png"
                  ),
                  SizedBox(width: 10),
                  Column (
                    children: [
                      Text("Fast Food",style: TextStyle(fontSize: 30, color: Colors.blue)),
                      SizedBox(height: 10),
                      Text("Description ....", style: TextStyle(fontStyle: FontStyle.italic))
                    ],
                  )
                ],
              ),

            ),

          ),
        )
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme:  ThemeData(primarySwatch:Colors.cyan),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Banner'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
          child: Banner(
            message: 'offer 20% off',
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              height: 100,
              width: 150,
              child:
              Image.network(
                'https://raw.githubusercontent.com/o7planning/rs/master/flutter/fast_food.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        color: Colors.green,
      ),
    );
  }
}
*/
/*
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
*/
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