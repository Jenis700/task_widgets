import 'package:flutter/material.dart';

class ToolTipScreen extends StatelessWidget {
  const ToolTipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conatiner Screen"),
      ),
      body: Center(
        child: Tooltip(
          verticalOffset: 25,
          margin: EdgeInsets.only(right: 200),
          decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(2, 2),
                spreadRadius: 1,
              ),
            ],
          ),
          message: "Icons Buttons",
          showDuration: Duration(seconds: 3),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.brown),
            ),
            child: Text("Long Press For Tool-Tip"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
