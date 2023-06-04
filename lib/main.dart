import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  bool _working = false;

  void startWorking() async {
    this.setState(() {
      this._working = true;
    });
  }

  void finishWorking() {
    this.setState(() {
      this._working = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter CircularProgressIndicator Example'),
      ),
      body: Center(
          child:  Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    value: this._working? null: 1,
                    backgroundColor: Colors.cyanAccent,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
                ElevatedButton(
                    child: Text("Start"),
                    onPressed: this._working? null: () {
                      this.startWorking();
                    }
                ),
                ElevatedButton(
                    child: Text("Finish"),
                    onPressed:!this._working? null: () {
                      this.finishWorking();
                    }
                )
              ]
          )
      ),
    );
  }
}