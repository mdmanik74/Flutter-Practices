import 'package:flutter/material.dart';

import 'HomeIcon.dart';

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
        drawer: const NavigationDrawer(
          children: [],
        ),
        appBar: AppBar(
          title: const Text(
            'Navigation Drawer Widget',
          ),
          backgroundColor: Colors.green,
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
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onLongPress: () {
              Navigator.of(context)
                  .pushReplacementNamed(const HomeIcon() as String);
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.workspaces),
            title: const Text('Workflow'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.update),
            title: const Text('Update'),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.plumbing),
            title: const Text('Plugin'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notification_add),
            title: const Text('Notifaction'),
            onTap: () {},
          ),
        ],
      )),
    );
  }
}




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
            'Switch List Widget',
          ),
          backgroundColor: Colors.green,
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
  bool _valueN = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.00),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple),
          ),
          child: SwitchListTile(
            value: _valueN,
            onChanged: (value) {
              setState(() {
                _valueN = value;
              });
            },
            title: const Text(
              'Plese Selected Yes/No Option',
              style: TextStyle(
                  fontFamily: 'Dancing_Script', fontStyle: FontStyle.normal),
            ),
            secondary: const Icon(Icons.switch_right),
            activeColor: Colors.red,
            inactiveThumbColor: Colors.black,
            selected: false,
          ),
        ),
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
            'Switch Button Widget',
          ),
          backgroundColor: Colors.green,
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
  bool _valueN = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.00),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple),
          ),
          child: Switch(
            value: _valueN,
            onChanged: (value) {
              setState(() {
                _valueN = value;
              });
            },
            activeColor: Colors.red,
            inactiveThumbColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

*/