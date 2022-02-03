import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  RowColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row & Column Screen"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // column no...1

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(0.8),
                    border: Border.all(
                      width: 2,
                      color: Colors.deepPurpleAccent.shade700,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text("ROW"),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
                Container(
                  child: Text(""),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.8),
                    border: Border.all(
                      width: 2,
                      color: Colors.brown.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(0.8),
                    border: Border.all(
                      width: 2,
                      color: Colors.deepPurpleAccent.shade700,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(""),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
                Container(
                  child: Text(""),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.8),
                    border: Border.all(
                      width: 2,
                      color: Colors.brown.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(0.8),
                    border: Border.all(
                      width: 2,
                      color: Colors.deepPurpleAccent.shade700,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(""),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
                Container(
                  child: Text(""),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.8),
                    border: Border.all(
                      width: 2,
                      color: Colors.brown.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
              ],
            ),

            // column no...2

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.orange.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text("ROW"),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
                Container(
                  child: Text("COLUMN"),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.cyan[700],
                    border: Border.all(
                      width: 2,
                      color: Colors.cyan.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.orange.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text("COLUMN"),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
                Container(
                  child: Text("COLUMN"),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.cyan[700],
                    border: Border.all(
                      width: 2,
                      color: Colors.cyan.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ), Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.orange.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text("COLUMN"),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
                Container(
                  child: Text("COLUMN"),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.cyan[700],
                    border: Border.all(
                      width: 2,
                      color: Colors.cyan.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
              ],
            ),

            // column no...3

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text("ROW"),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.green.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(""),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),

                Container(
                  child: Text(""),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.green.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(""),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),Container(
                  child: Text(""),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.green.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade900,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text(""),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ],
        ));
  }
}
