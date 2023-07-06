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


