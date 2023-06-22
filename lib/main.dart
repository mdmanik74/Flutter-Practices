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
        appBar: AppBar(title: Text('Text Field Widget',),backgroundColor: Colors.deepOrange,),
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
  TextEditingController username=TextEditingController();
  TextEditingController password =TextEditingController();
  @override
  void initState(){
    username.text="";
    password.text="";
    super.initState();
  }
  Widget build(BuildContext context) {
    return Center(
      child: Container(
padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: username,
              decoration: InputDecoration(
                labelText: 'UserName :',
                prefixIcon: Icon(Icons.people),
                border: myinputborder(),
                enabledBorder: myinputborder(),
                focusedBorder: myfocusborder(),
              ),
            ),
            Container(height: 20,),
            TextField(
              controller: password,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                enabledBorder: myinputborder(),
                focusedBorder: myfocusborder(),
              ),
            )
          ],
        ),

      ),
    );
  }
  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all((Radius.circular(20)),)
    ),
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
        appBar: AppBar(title: Text('Text Field Widget',style: TextStyle(color: Colors.white),),),
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
  int volume = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Inter Your Name',
                label: Text('Name :'),
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 30.0,
                ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
                prefix: Icon(Icons.drive_file_rename_outline),
                suffixIcon: Icon(Icons.remove_done),
                errorText: 'Error',
              ),
              keyboardType: TextInputType.phone
              ,
            ),
          ],
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
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Icon Widget',style: TextStyle(color: Colors.white),),),
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
  int volume=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color:Colors.white,
        alignment: Alignment.center,
        width: 300,
        height: 300,
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Icon(Icons.volume_down,
              size:50,color: Colors.redAccent,

            ),
     IconButton(onPressed: (){
      print('One Presssed');
      setState(() {
        volume +=1;
      });
     }, icon: Icon(Icons.add,size: 50,)),
            Text('$volume',style: TextStyle(fontSize: 30,),)
          ],
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
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('GridView Widget Example',style: TextStyle(color: Colors.white),),),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<int> list = [];
  @override
  void initState() {
    for (int i = 'A' as int; i <= 'Z;'; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext cxt, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.redAccent,
            alignment: Alignment.center,
            child: Text('${list[index]}'),
          ),
        );
      },
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
        appBar: AppBar(title: Text('GridView Widget Example',style: TextStyle(color: Colors.white),),),
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
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20.0),
      crossAxisCount: 4,
    mainAxisSpacing: 10,
      crossAxisSpacing: 15,
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('Hello Bangladesh'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('Hello Bangladesh'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('Hello Bangladesh'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('Hello Bangladesh'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('Hello Bangladesh'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('Hello Bangladesh'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('Hello Bangladesh'),
        ),

      ],
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
        appBar: AppBar(title: Text('Stack Widget Example',style: TextStyle(color: Colors.white),),),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
 child: SizedBox(
   width: 300,
   height: 300,
   child: Stack(
     clipBehavior: Clip.none, fit: StackFit.expand,

     children: [
       Container(
         height: 300,
         width: 300,
         color: Colors.red,
       ),

       Positioned(
         top: 80,
         right: 80,
         child: Container(
         width: 150,
         height: 150,
         color: Colors.black,
       ),),
       Positioned(
         left: 20,
         top: 20,
         child: Container(
           height: 200,
           width: 200,
           color: Colors.purple,
         ),
       )
       
     ],
   ),
 ),
),
    );
  }
}

*/



/*
class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
    return ListView(

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
        appBar: AppBar(title: Text('List View',style: TextStyle(color: Colors.white),),),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 List list = [];

  void initState(){
    for(int i=0; i<=20; i++){
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    itemCount: list.length,
      itemBuilder: (BuildContext, int index){
      return ListTile(
        title: Text ("List Number 00${list[index]}"),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,color: Colors.blue,
          ),
        ),
        trailing: Icon(Icons.arrow_back),
      );
      },
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
