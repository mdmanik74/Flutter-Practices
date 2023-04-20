import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Alert Dialog'),
        ),
        body: Center(
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 300,
              height: 500,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green[500],
                      radius: 108,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"
                        ),
                        radius: 100,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
