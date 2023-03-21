import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override

  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Stack, Positioned, Floating"),),
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(

                color: Colors.deepOrange,
                child:Image.asset("image/download.png"),
              ),
              Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}














/*
class MyApp extends StatelessWidget {
  @override

  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            ListTile(
              title: Text('Easy Explanation'),
              subtitle: Text("Learn everything with easy explanation"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Easy Explanation'),
              subtitle: Text("Learn everything with easy explanation"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Easy Explanation'),
              subtitle: Text("Learn everything with easy explanation"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Easy Explanation'),
              subtitle: Text("Learn everything with easy explanation"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Easy Explanation'),
              subtitle: Text("Learn everything with easy explanation"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Easy Explanation'),
              subtitle: Text("Learn everything with easy explanation"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
          ],

        ),
      ),
    );
}

}

*/












/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
  return MaterialApp (debugShowCheckedModeBanner:false, home: Homepage());

}
}

class Homepage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return SafeArea(
        child:Scaffold(
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height /3,
              width: MediaQuery.of(context).size.width/ 2,
              color: Colors.deepOrange,
            ),
          ),
        ) ,

    );
  }
}

*/































//
//
// void main () => runApp(Myapp());
// class Myapp extends StatelessWidget{
//   @override
//
//   Widget build (BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(title: Text("This is Column"),),
//           body: SingleChildScrollView(
//     scrollDirection: Axis.vertical,
//             child:Column(
//             children: [
//               Container(
//             height: 500,
//                 width: 300,
//                 color: Colors.red,
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 height: 500,
//                 width: 300,
//                 color: Colors.red,
//               ),
//             ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }






















/*
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 1000,
            width: 500,
            decoration: BoxDecoration(color: Colors.red),
            child: Text("Hellow Bangladesh. My country",style: TextStyle(fontSize: 25,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

*/

// safe area
/*
void main () =>runApp(MyApp());

class MyApp extends StatelessWidget{

  @override

  Widget build (BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        left: false,
        child: Scaffold(
          body: Center(
            child: Text("In publishing and graphic design, Lorem ipsum is a placeholder"
                " text commonly used to demonstrate the visual form of a document or a "
                "typeface without relying on meaningful content. Lorem ipsum may be used "
                "as a placeholder before final copy is available.",style: TextStyle(fontSize: 35),),
          ),
        ),
      ),
    );
  }
}



*/









/* void main () =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(child: Text("This is my first App", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
          ,),),
        appBar: AppBar(title: const Text("Home Page"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.access_alarm),)
          ],
        ),
      ),
    );
  }
}


 */