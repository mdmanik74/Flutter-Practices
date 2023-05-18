import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Application';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

/// stateful widget that the main application instantiates
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

enum Fruit { apple, banana }

/// private State class that goes with MyStatefulWidget
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Fruit? _fruit = Fruit.apple;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Apple'),
            leading: Radio<Fruit>(
              value: Fruit.apple,
              groupValue: _fruit,
              onChanged: (Fruit? value) {
                setState(() {
                  _fruit = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Banana'),
            leading: Radio<Fruit>(
              value: Fruit.banana,
              groupValue: _fruit,
              onChanged: (Fruit? value) {
                setState(() {
                  _fruit = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Banana'),
            leading: Radio<Fruit>(
              value: Fruit.banana,
              groupValue: _fruit,
              onChanged: (Fruit? value) {
                setState(() {
                  _fruit = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Banana'),
            leading: Radio<Fruit>(
              value: Fruit.banana,
              groupValue: _fruit,
              onChanged: (Fruit? value) {
                setState(() {
                  _fruit = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Banana'),
            leading: Radio<Fruit>(
              value: Fruit.banana,
              groupValue: _fruit,
              onChanged: (Fruit? value) {
                setState(() {
                  _fruit = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
final Color darkBlue= Color.fromARGB(255, 18, 32, 47);
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Transform Widget'),),
        body: MyWidget(),
      ),
    );
  }
}


class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
        left: 0,
            top: 0,
            child:Transform.rotate(angle: 1,
        child: Container(color: Colors.red,width: 250, height: 250,),
        ),

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

/// Flutter code sample for [showDatePicker].

void main() => runApp(const DatePickerApp());

class DatePickerApp extends StatelessWidget {
  const DatePickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      restorationScopeId: 'app',
      home: const DatePickerExample(restorationId: 'main'),
    );
  }
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key, this.restorationId});

  final String? restorationId;

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _DatePickerExampleState extends State<DatePickerExample>
    with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
  RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
  RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @pragma('vm:entry-point')
  static Route<DateTime> _datePickerRoute(
      BuildContext context,
      Object? arguments,
      ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            _restorableDatePickerRouteFuture.present();
          },
          child: const Text('Open Date Picker'),
        ),
      ),
    );
  }
}

*/


/*
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter – Tooltip Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter – Tooltip Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter – Tooltip Widget'),
      ),
      body: Center(
        child: Tooltip(
          message: 'This example show a basic Tooltip which has a Text as child. message contains your label to be shown by the tooltip when the child that Tooltip wraps is hovered over on web or desktop. On mobile, the tooltip is shown when the widget is long pressed.',
          height: 50,
          textStyle: TextStyle(fontSize: 30,color: Colors.black),
          child: Text('Please Here Mouse Icon'),

        ),
      ),

    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Container in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ExpansionTile widget in flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile widget in flutter'),
      ),
      body: Column(
        children: [
          ExpansionTile(title: Text('ExpansionTile widget in flutter'),
          backgroundColor: Colors.white,
          subtitle: Text('This is Subtitle'),
            leading: Icon(Icons.tab),
            trailing: Icon(Icons.arrow_downward),
            children: [
              Container(
                height: 200,
                color: Colors.yellowAccent,
              ),
            ],
          ),
          ExpansionTile(title: Text('ExpansionTile widget in flutter'),
            backgroundColor: Colors.white,
            subtitle: Text('This is Subtitle'),
            leading: Icon(Icons.tab),
            trailing: Icon(Icons.arrow_downward),
            children: [
              Container(
                height: 200,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),

    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Container in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Container in Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container in Flutter'),
      ),
      body: Column(
        children: [
          ExpansionTile(title: Text('Please Click Here'),
            subtitle: ,

          ),
        ],
      ),

    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Container in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Container in Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container in Flutter'),
      ),
 floatingActionButton: FloatingActionButton(onPressed: (){

   setState(() {
     _value=!_value;
   });
 }),
      body: Center(
        child: AnimatedContainer(
          height: _value ==false?150:350,
          width: _value==false?150:300,
          color:_value==false?Colors.red:Colors.yellowAccent,
          duration: Duration(seconds:1),
        ),
      ),

    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() => runApp(const SwitchApp());

class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true, colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch Sample')),
        body: const Center(
          child: SwitchExample(),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light0 = true;
  bool light1 = true;
  bool light2 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
  MaterialStateProperty.resolveWith<Icon?>(
        (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch(
          value: light0,
          onChanged: (bool value) {
            setState(() {
              light0 = value;
            });
          },
        ),
        Switch(
          thumbIcon: thumbIcon,
          value: light1,
          onChanged: (bool value) {
            setState(() {
              light1 = value;
            });
          },
        ),
      ],
    );
  }
}

*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Create a Checkbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Create a Checkbox'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch in flutter'),
      ),
     backgroundColor: _value==false?Colors.red:Colors.black38,
      body: Center(
        child: Switch(value: _value,
        onChanged: (val){
          setState(() {
            _value=val;
            print(_value);
          });
        }),
        ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Create a Checkbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Create a Checkbox'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated crossfade flutter'),
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child: AnimatedCrossFade(
        firstChild: Container(
          color: Colors.deepOrange,
          child: Center(child: ElevatedButton(onPressed: (){}, child: null,),),
        ), secondChild: Center(

      ),
      ),
    ),
  ],
),

    );
  }
}
*/

/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          background: Container(
            color: Colors.green,
          ),
          key: ValueKey<int>(items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          child: ListTile(
            title: Text(
              'Item ${items[index]}',
            ),
          ),
        );
      },
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
*/
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