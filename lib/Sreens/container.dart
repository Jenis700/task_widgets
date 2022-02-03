import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conatiner Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    color: Colors.orange,
                  ),
                  height: 350,
                  width: 300,
                  child: Container(
                    margin: EdgeInsets.only(left: 125),
                    child: Text(
                      "Margin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    color: Colors.yellowAccent,
                  ),
                  height: 290,
                  width: 220,
                  child: Container(
                    margin: EdgeInsets.only(left: 85, top: 10),
                    child: Text(
                      "Border",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 75, top: 70),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    color: Colors.pink.withOpacity(0.8),
                  ),
                  height: 210,
                  width: 150,
                  child: Container(
                    margin: EdgeInsets.only(left: 45, top: 5),
                    child: Text(
                      "padding",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 100, top: 100),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    color: Colors.blue.withOpacity(0.8),
                  ),
                  height: 150,
                  width: 100,
                  child: Container(
                    margin: EdgeInsets.only(left: 30, top: 35),
                    child: Text(
                      "Child",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 120, top: 150),
                  child: Text("(Content)"),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.6),
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(5, 5),
                      blurRadius: 2,
                      spreadRadius: 2,
                    )
                  ]),
              height: 200,
              width: 300,
              alignment: Alignment.topCenter,
              constraints: BoxConstraints.expand(height: 150.0, width: 300),
              transform: Matrix4.rotationZ(0.1),
              child: Text(" \n Hello Everyone...! \n\n I'm Jenis \n\n Flutter Develpoer...! " , style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
