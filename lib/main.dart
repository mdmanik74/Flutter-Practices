import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Flutter Cupertino Alert Dialog Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png",scale: 12,),
            SizedBox(height: 50,),
            RaisedButton(
              color: Colors.green[100],
              onPressed: () {
                _showDialog(context);
              },
              child: Text('Show AlertDialog'),
            ),
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context){
    showDialog(
        context: context,
        child:   CupertinoAlertDialog(
          title: Column(
            children: <Widget>[
              Text("CupertinoAlertDialog"),
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ],
          ),
          content: new Text( "An iOS-style alert dialog."+
              "An alert dialog informs the user about situations that require acknowledgement."
                  " An alert dialog has an optional title, optional content, and an optional list of actions."),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },),
            CupertinoDialogAction(
              child: Text("CANCEL"),
              onPressed: () {
                Navigator.of(context).pop();
              },),
            CupertinoDialogAction(
              child: Text("MAY BE"),
              onPressed: () {
                Navigator.of(context).pop();
              },),
          ],
        ));
  }
}


/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Custom AlertDialog Example'),
        ),
        body: Center(
            child: TextButton(
              onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    elevation: 0,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: SizedBox(
                      height: 300,
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const FlutterLogo(
                            size: 100,
                          ),
                          const Text(
                            "Custom Dialog Example in Flutter",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Okay"))
                        ],
                      ),
                    ),
                  )),
              child: const Text('Show Dialog'),
            )));
  }
}

 */