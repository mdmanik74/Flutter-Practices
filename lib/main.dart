import 'package:flutter/material.dart';
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Drop Down Option',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage()
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // define a list of options for the dropdown
  final List<String> _animals = ["Dog", "Cat", "Crocodile", "Dragon"];

  // the selected value
  String? _selectedAnimal;
  @override
    Widget build (BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('Drop Down Button'),
    ),
    body: Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(30)),
        child: DropdownButton(
          value: _selectedAnimal,
          onChanged: (value){
            setState(() {
              _selectedAnimal = vlue;
            });
          },
        ),
        ),
      ),
    ),
  );}
}




/*
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context){
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(title: Text('Rich Text Flutter'),),
         body: Center(
           child: RichText(text: TextSpan(
             text: 'Donot have an account ? ',style: TextStyle(color: Colors.black,fontSize: 18),
             children: [
               TextSpan(
                 text: 'Sign Up',
                 style: TextStyle(color: Colors.deepOrange,fontSize: 18),
               ),
             ]
           ),),
         ),
       ),
     );
   }
 }
 */
/*
import 'package:flutter/material.dart';

void main() => runApp(const SliderApp());

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: false,
      ),
      home: const SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('তোমার ডাকনাম কি???',style: TextStyle(fontSize: _currentSliderValue),),
          Slider(
            value: _currentSliderValue,
            min: 10,
            max: 50,
            divisions: 10,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

*/

/*
import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
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
      debugShowCheckedModeBanner: false,
      title: 'List Title Demo',
      home: ListTileWidget(),
    );
  }
}

class ListTileWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('List Title Demo'),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ),
        title: Text('Person 01',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Text('Image Network is a package that allows you to render images on the web using CanvasKit without having problems'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          print('Person 01');
        },
        dense: true,
        selected: false,
        enabled: true,
      ),

    );
  }
}

 */