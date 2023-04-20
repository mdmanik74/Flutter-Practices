import 'package:flutter/material.dart';
class DataTableDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Tables'),
      ),


    );
  }
}

class MyStatelessWidget extends StatelessWidget{
  const MyStatelessWidget ({super.key});
  @override
  Widget build(BuildContext context){
    return DataTable(
    columns: [
      DataColumn(label:Expanded(
        child: Text(
          "Name", style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
        ),
      ),
      ),
      DataColumn(
        label: Expanded(
          child: Text(
            'Role',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
    ],
      rows: const [
        DataRow(
          cells: [
            DataCell(Text('Manik')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
          ]
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Janine')),
            DataCell(Text('43')),
            DataCell(Text('Professor')),
          ],
        ),
      ],
    );
  }
}