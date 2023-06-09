/*
import 'package:flutter/material.dart';
void main() =>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Profile Example',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/1.jpg'),
            ),
            SizedBox(
              height: 20,
            ),

            ListTile(
              title: Text('Name'),
              subtitle: Text('Md. Manik'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward,color: Colors.grey,),
              minVerticalPadding: 25.0,
            ),
            Divider(height: 0,),
            ListTile(
              title: Text('Phone'),
              subtitle: Text('0111777777'),
              leading: Icon(Icons.call),
              trailing: Icon(Icons.arrow_forward,color: Colors.grey,),
            ),
            Divider(height: 0,),
            ListTile(
              title: Text('Address'),
              subtitle: Text('Dhaka, Bangladesh'),
              leading: Icon(Icons.location_city_rounded),
              trailing: Icon(Icons.arrow_forward,color: Colors.grey,),
            ),
            Divider(height: 10,),
            ListTile(
              title: Text('Email'),
              subtitle: Text('name@gmail.com'),
              leading: Icon(Icons.mail),
              trailing: Icon(Icons.arrow_forward,color: Colors.grey,),
            ),
          ],
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('CheckBoxList Widget',),backgroundColor: Colors.deepOrange,),
        body: const MyHomePage(),
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
  late bool _valueC=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CheckboxListTile(
      value: _valueC,
      onChanged: (value) {
        setState(() {
          _valueC=value!;
        });
        print(value);
      },
      title: Text('Title'),
      subtitle: Text('Subtitle'),
      secondary: Container(child: Icon(Icons.favorite)),
      activeColor: Colors.red,
      checkColor: Colors.black,
      selected: _valueC,
      controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  
  }
}
*/

/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Radio Button Widget',
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: const MyHomePage(),
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
  double _valueN = 2.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.00),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
        ),
        child: Column(
          children: [
            Slider(
              value: _valueN,
              min: 0.0,
              max: 10.0,
              onChanged: (value) {
                setState(() {
                  _valueN = value;
                });
              },
              activeColor: Colors.red,
              inactiveColor: Colors.amber,
              divisions: 5,
              label: 'Range',
              
            ),
            Text('Range Value $_valueN')
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('CheckBoxList Widget',),backgroundColor: Colors.deepOrange,),
        body: const MyHomePage(),
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
  late bool _valueC=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CheckboxListTile(
      value: _valueC,
      onChanged: (value) {
        setState(() {
          _valueC=value!;
        });
        print(value);
      },
      title: Text('Title'),
      subtitle: Text('Subtitle'),
      secondary: Container(child: Icon(Icons.favorite)),
      activeColor: Colors.red,
      checkColor: Colors.black,
      selected: _valueC,
      controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  
  }
}

*/

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        hoverColor: Colors.orange,
        splashColor: Colors.red,
        focusColor: Colors.yellow,
        highlightColor: Colors.purple,
        child: Container(
          width: 200,
          height: 80,
          alignment: Alignment.center,
          child: Text('Flutter InkWell'),
        ),
        onTap: (){},
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
  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,

        child: Column(
          children: [
            SizedBox(
              height: 52,
            ),
            ElevatedButton.icon(onPressed: (){},
              icon:Icon(Icons.download),
              label: Text('Download'),
            ),
            ElevatedButton(onPressed: (){}, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Downlaod'),
                SizedBox(
                  width: 50,
                ),
                Icon(Icons.download,size: 24.0,),
              ],
            )),

            FloatingActionButton.extended(onPressed: (){},
              label: Text('Here Download'),
              backgroundColor: Colors.red,
              icon: Icon(Icons.download,size: 24.0,),
            ),

            SizedBox.fromSize(
              size: Size(56, 56),
              child: ClipOval(
                child: Material(
                  color: Colors.amberAccent,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.shopping_cart), // <-- Icon
                        Text("Buy"), // <-- Text
                      ],
                    ),
                  ),
                ),
              ),
            )
                     ],
        ),
      ),

    );
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
