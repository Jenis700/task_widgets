import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Screen"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Table1(),
          Divider(height: 50,thickness: 1.5,),
          Table2(),
        ],
      ),
    );
  }
}

class Table1 extends StatelessWidget {
  const Table1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(110.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Website', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Tutorial', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Review', style: TextStyle(fontSize: 15.0))
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text('Javatpoint')]),
                  Column(children: [Text('Flutter')]),
                  Column(children: [Text('5*')]),
                ]),
                TableRow(children: [
                  Column(children: [Text('Javatpoint')]),
                  Column(children: [Text('MySQL')]),
                  Column(children: [Text('5*')]),
                ]),
                TableRow(children: [
                  Column(children: [Text('Javatpoint')]),
                  Column(children: [Text('ReactJS')]),
                  Column(children: [Text('5*')]),
                ]),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

class Table2 extends StatelessWidget {
  const Table2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 300,
      child: ListView(
        children: <Widget>[
          Center(
              child: Text(
                'People-Chart',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          DataTable(
            columns: [
              DataColumn(
                  label: Text('ID',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Name',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Profession',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Stephen')),
                DataCell(Text('Actor')),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('John')),
                DataCell(Text('Student')),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('Harry')),
                DataCell(Text('Leader')),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text('Scientist')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}


