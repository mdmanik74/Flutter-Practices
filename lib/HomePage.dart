/*
import 'dart:js';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;

  HomePage({required this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final items = List.generate(100, (counter) => 'Item: $counter');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
    ),
      body: buildListViews(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Exit',
          ),
        ],
        onTap: (int index) =>setState(() {
          this.index=index;
        }),
      ),
    );
  }
}

Widget buildListViews() {
  var index=0;
  if (index == 0) {
    return buildBasicListView();
  } else if (index == 1) {
    return buildVerticalListView();
  } else if (index == 2) {
    return buildHorizontalListView();
  } else {
    return Container();
  }
}


Widget buildBasicListView(){
  return ListView(

children: [
  ListTile(
      leading: CircleAvatar(backgroundColor: Colors.red.shade500,child: Text('AK'),
  ),
  title: Text ('Ab Karim'),
  subtitle: Text('Flutter Developer'),
  trailing: Icon(Icons.star,color: Colors.blue,),
  ),
  ListTile(
    leading: CircleAvatar(backgroundColor: Colors.red.shade500,child: Text('AK'),
    ),
    title: Text ('Ab Karim'),
    subtitle: Text('Flutter Developer'),
    trailing: Icon(Icons.star,color: Colors.blue,),
  ),
  ListTile(
    leading: CircleAvatar(backgroundColor: Colors.red.shade500,child: Text('AK'),
    ),
    title: Text ('Ab Karim'),
    subtitle: Text('Flutter Developer'),
    trailing: Icon(Icons.star,color: Colors.blue,),
  ),
  ListTile(
    leading: CircleAvatar(backgroundColor: Colors.red.shade500,child: Text('AK'),
    ),
    title: Text ('Ab Karim'),
    subtitle: Text('Flutter Developer'),
    trailing: Icon(Icons.star,color: Colors.blue,),
  ),
  ListTile(
    leading: CircleAvatar(backgroundColor: Colors.red.shade500,child: Text('AK'),
    ),
    title: Text ('Ab Karim'),
    subtitle: Text('Flutter Developer'),
    trailing: Icon(Icons.star,color: Colors.blue,),
  ),
],
  );
}


Widget buildVerticalListView() {
  var items;
  return ListView.separated(
    separatorBuilder: (context, index) => Divider(
      color: Colors.black,
    ),
    itemCount: items.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(items[index]),
      );
    },
  );
}

Widget buildHorizontalListView(){
  return ListView.separated(
padding: EdgeInsets.all(15.0),
    scrollDirection: Axis.horizontal,
    separatorBuilder: (context, index)=>Divider(
      color: Colors.red,
    ),
    itemBuilder: (context, index){
  return Container(
    width: 100,
    height: 50,
    child: ListTile(

    ),
  ),
    },
  );
}

*/
