import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index =0;
  final item =List.generate(10, (counter) => 'Item:$counter');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: buildListViews(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.view_list),
      label: 'Basis',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded),
            label: 'Vertocal',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.line_style),
          label: 'HoriZontal'
          ),
        ],
        onTap: (int index)=>setState(() {
          this.index=index;
        }),
      ),
    );
  }
}

Widget buildListViews(){
  var index=0;
  if(index==0){
    return buildBasicListView();
  }else if(index ==1){
    return buildVerticalListView();
  }
  else if(index==2){
    return buildHorizontalListView();
  }else {
    return Container();
  }

}

// Basic List View Builder method
Widget buildBasicListView() {
  return ListView(

  );
}

Widget buildVerticalListView() {
  return ListView(

  );
}

Widget buildHorizontalListView() {
  return ListView(

  );
}