import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Screen"),
      ),
      body: Container(margin: EdgeInsets.only(top: 300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.icecream_outlined,
                  color: Colors.deepOrange,
                ),
                Text("Icon : 1"),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.icecream_outlined,
                  size: 50,
                ),
                Text("Icon : 1"),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.icecream_outlined,
                  color: Colors.green,
                ),
                Text("Icon : 1"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
