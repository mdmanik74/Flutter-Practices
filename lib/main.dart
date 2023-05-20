import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App Bar'),
      ),
      endDrawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                    radius: 40.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Tom Cruise',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('tomcruise@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14.0
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Here you place your menu items
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate

              },
            ),
            Divider(height: 3.0),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate

              },
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text('Close Drawer', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  var isVisible = true;
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Flexible Widget Example with Row'),),
        body: Center(
          child: AlphabetWidget(),
        ),
      ),
    );
  }
}


class AlphabetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cellheight = 85;
    Color cellcolor = Color(0xFFFFEE58);
    double tsFactor = 3.0;
    Alignment cellalignment = Alignment.center;

    List alphabets = [['A', 'B', 'C', 'D'],
      ['E', 'F', 'G', 'H'],
      ['I', 'J', 'K', 'L'],
      ['M', 'N', 'O', 'P'],
      ['Q', 'R', 'S', 'T'],
      ['U', 'V', 'W', 'X'],
      ['Y', 'Z']];

    return ListView(
      children: <Widget>[
        Row(
          children: List.generate(alphabets[0].length, (index) {
            return Flexible(
              flex: 2,
              child: Container(
                  height: cellheight,
                  alignment: cellalignment,
                  decoration: const BoxDecoration(
                      color:  Color(0xFFFFEE58),
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      )),
                  child: Text(
                    alphabets[0][index],
                    textScaleFactor: tsFactor,
                  )),
            );
          }),
        ),
        Row(
          children: List.generate(alphabets[1].length, (index) {
            return Flexible(
              flex: 2,
              child: Container(
                  height: cellheight,
                  alignment: cellalignment,
                  decoration: const BoxDecoration(
                      color:  Color(0xFFFFEE58),
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      )),
                  child: Text(
                    alphabets[1][index],
                    textScaleFactor: tsFactor,
                  )),
            );
          }),
        ),
        Row(
          children: List.generate(alphabets[2].length, (index) {
            return Flexible(
              flex: 2,
              child: Container(
                  height: cellheight,
                  alignment: cellalignment,
                  decoration: const BoxDecoration(
                      color:  Color(0xFFFFEE58),
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      )),
                  child: Text(
                    alphabets[2][index],
                    textScaleFactor: tsFactor,
                  )),
            );
          }),
        ),
        Row(
          children: List.generate(alphabets[3].length, (index) {
            return Flexible(
              flex: 2,
              child: Container(
                  height: cellheight,
                  alignment: cellalignment,
                  decoration: const BoxDecoration(
                      color:  Color(0xFFFFEE58),
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      )),
                  child: Text(
                    alphabets[3][index],
                    textScaleFactor: tsFactor,
                  )),
            );
          }),
        ),
        Row(
          children: List.generate(alphabets[4].length, (index) {
            return Flexible(
              flex: 2,
              child: Container(
                  height: cellheight,
                  alignment: cellalignment,
                  decoration: const BoxDecoration(
                      color:  Color(0xFFFFEE58),
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      )),
                  child: Text(
                    alphabets[4][index],
                    textScaleFactor: tsFactor,
                  )),
            );
          }),
        ),
        Row(
          children: List.generate(alphabets[5].length, (index) {
            return Flexible(
              flex: 2,
              child: Container(
                  height: cellheight,
                  alignment: cellalignment,
                  decoration: const BoxDecoration(
                      color:  Color(0xFFFFEE58),
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      )),
                  child: Text(
                    alphabets[5][index],
                    textScaleFactor: tsFactor,
                  )),
            );
          }),
        ),
        Row(
          children: List.generate(alphabets[6].length, (index) {
            return Flexible(
              flex: 2,
              child: Container(
                  height: cellheight,
                  alignment: cellalignment,
                  decoration: const BoxDecoration(
                      color:  Color(0xFFFFEE58),
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      )),
                  child: Text(
                    alphabets[6][index],
                    textScaleFactor: tsFactor,
                  )),
            );
          }),
        ),
      ],
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter ListView'),),
        body: ListView(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.all(16.0),
          color: Colors.blueGrey,
          child: const Center(child: Text('Flutter provides a number of widgets that help you build apps that follow Material Design', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.black54,
              child: const Center(child: Text('Create beautiful apps faster with Flutters collection of visual, structural, platform, and interactive', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.blueGrey[600],
              child: const Center(child: Text('This is all the best Flutter Widgets that you should know if you code Flutter', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.black54,
              child: const Center(child: Text('Flutter provides a number of widgets that help you build apps that follow Material Design', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.blueGrey[600],
              child: const Center(child: Text('This is all the best Flutter Widgets that you should know if you code Flutter', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.black54,
              child: const Center(child: Text('Flutter provides a number of widgets that help you build apps that follow Material Design', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 50,
              color: Colors.blueGrey[600],
              child: const Center(child: Text('This is all the best Flutter Widgets that you should know if you code Flutter', style: TextStyle(fontSize: 18, color: Colors.white),)),
            ),




          ],
        ),
      ),
    );
  }
}

*/