import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                colors: <Color>[
                  Color.fromARGB(255, 27, 216, 46),
                  Color.fromARGB(255, 158, 173, 28),
                ],
                stops: <double>[0.0, 1.0],

              ),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'AppBar Dashbaord',
            style: TextStyle(color: Colors.white),
          ),
        ),
        /*
        appBar: AppBar(title: const Text('AppBar Dashboard',
          style: TextStyle(color: Colors.white),
        ),
          backgroundColor: Color(0x7FFF0000),
        ),
        backgroundColor: Colors.green.shade100,

         */
      ),
    );
  }
}















































/*
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Scaffold(
     appBar: AppBar(title: Text('Gradient Color In Appbar & Container Flutter'),
       flexibleSpace: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
               begin: Alignment.center,
               end: Alignment.bottomCenter,
               tileMode: TileMode.repeated,
               colors: [Colors.green,Colors.orangeAccent]
           ),
         ),
       ),

     ),
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.center,
           end: Alignment.bottomCenter,
           tileMode: TileMode.repeated,
           colors: [Colors.pinkAccent,Colors.deepOrange]
         ),
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
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Ok",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              ),
            ),
            expandedHeight: 200,
            backgroundColor: Colors.pinkAccent[400],
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: () {},
            )
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                tooltip: 'Notifaction Icon',
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                tooltip: 'Cart Icon',
                onPressed: () {},
              ),
            ],
          ),
          SliverList(delegate:
              SliverChildBuilderDelegate(
                  (context, index) =>ListTile(
                    tileColor: (index%2==0) ? Colors.green[50],
                    title: Center(
                      child: Text('$index', style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.greenAccent[400],
                      ),),
                    ),
                  )
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
void main() =>runApp(Myapp());

class Myapp extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  home: DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(title: Text('Tab Bar Widget'),
      bottom: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.cloud_outlined),
          ),
          Tab(
            icon: Icon(Icons.message),
          ),
          Tab(
            icon: Icon(Icons.search),
          )
        ],
      ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text('It is Cloud Here'),
          ),
          Center(
            child: Text('It is Message Here'),
          ),
          Center(
            child: Text('It is SearchBox Here'),
          ),
        ],
      ),
    ),
  ),
    );
        }
}


*/

























/*
import 'package:flutter/material.dart';
import 'package:codes/one.dart';
import 'package:codes/two.dart';
void main() =>runApp(Myapp());

class Myapp extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child:Scaffold(
          appBar: AppBar(
            title: Text('Hellow World'),
            bottom: TabBar(tabs: [
              Tab(icon:Icon(Icons.camera),),
              Tab(icon:Icon(Icons.message),),
            ],),
          ),
          body: TabBarView(children: [

          One(),
          Two(),
          ],),
      )),
    );
  }
}

*/





























/*
import 'package:flutter/material.dart';
import 'package:codes/MyStatefulWidget.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

*/





/*

import 'package:flutter/material.dart';

import 'package:codes/homescreen.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(title: Text('List To Details Page Animation Hero'),
    ),
    ),
    );
}
  }
*/

/*
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text('Expanded Widget'),
      ),
      body: Column(
        children: [
          Expanded(
          flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pink,
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
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer:SidebarMenu(),
        appBar: AppBar(
          title: Text('SideBar'),
          backgroundColor: Colors.red,
        ),
      ),

    );
  }
}
*/













/*
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Card and Gridview"),),
      body: const Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0)),
            color: Colors.green,),
          ),
      ).
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
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

  Widget build (BuildContext context){

    final pages= [
      Container(color: Colors.green,),
      Container(color: Colors.red,),
      Container(color: Colors.yellow,),
      Container(color: Colors.blue,),
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(title: Text("Liquid Swipe In Flutter"),),
          body: LiquidSwipe(pages: pages,),

    ),
    );
  }
}
*/
























/*
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




*/









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