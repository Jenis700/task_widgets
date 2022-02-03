import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stak Screen"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 355,
              decoration: BoxDecoration(
                color: Colors.brown.withOpacity(0.65),
                border: Border.all(
                    color: Colors.brown.shade900,
                    style: BorderStyle.solid,
                    width: 3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 250, top: 30),
                child: Text("INDEX : 0"),
              ),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  border: Border.all(
                    color: Colors.yellow.shade300,
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                ),
                child: Center(child: Text("INDEX : 2")),
              ),
            ),
            Positioned(
              top: 200,
              left: 180,
              child: Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow.shade900,
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                  color: Colors.yellow.shade300,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text("INDEX : 3"),
                    ),
                    Container(margin: EdgeInsets.only(top: 80, left: 30),
                      child: Text("(Stack in Stck)"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
