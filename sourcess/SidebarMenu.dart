
/*
import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
child: ListView(
  padding: EdgeInsets.zero,
  children: [
    UserAccountsDrawerHeader(accountName: Text('Md. Manik'),
        accountEmail: Text('example@gmail.com'),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Container(
            width: 300.0,
            height: 500.0,
            decoration: BoxDecoration(
              color: Colors.green,
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                    ), fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    ),
    ListTile(
      leading: Icon(Icons.favorite),
      title: Text('Favorites'),
      onTap: () =>null,
    ),
    ListTile(
      leading: Icon(Icons.people),
      title: Text('People'),
      onTap: () =>null,
    ),
    ListTile(
      leading: Icon(Icons.share),
      title: Text('Share'),
      onTap: () =>null,
    ),
    ListTile(
      leading: Icon(Icons.notifications),
      title: Text('Request'),
      onTap: () =>null,
      trailing: ClipOval(
        child: Container(
          color: Colors.red,
          height: 20,
          width: 20,
          child: Center(
            child: Text('8', style: TextStyle(color: Colors.white, fontSize: 12,),)
          ),
        ),
      ),
    ),
    new Divider(),
    ListTile(
      leading: Icon(Icons.exit_to_app),
      title: Text('Exit'),
      onTap: () =>null,
    ),
  ],
),
    );
  }
}


 */