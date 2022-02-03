import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(color: Colors.deepOrange.shade100),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade200,
                  fontWeight: FontWeight.w900,
                  fontSize: 15),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(backgroundColor: Colors.cyan, fontSize: 16),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade300,
                  decoration: TextDecoration.overline,
                  fontSize: 17,
                  decorationThickness: 4),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                color: Colors.deepOrange.shade400,
                decoration: TextDecoration.lineThrough,
                fontSize: 18,
              ),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade500,
                  decoration: TextDecoration.underline,
                  fontSize: 18.5),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade600,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted,
                  fontSize: 19,
                  decorationThickness: 4),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade700,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  fontSize: 19.5),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade800,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  fontSize: 20,
                  decorationThickness: 2),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade900,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontSize: 20.5,
                  decorationThickness: 3),
            ),
            Text(
              "WElCOME TO THE...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade800,
                  wordSpacing: 35,
                  fontSize: 23),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                color: Colors.deepOrange.shade600,
                fontSize: 21.5,
                shadows: [
                  Shadow(
                      color: Colors.black54,
                      blurRadius: 5,
                      offset: Offset(2, 2))
                ],
              ),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 21.5,fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                      color: Colors.red,
                      blurRadius: 5,
                      offset: Offset(4, 2))
                ],
              ),
            ),
            Text(
              "WElCOME TO THE  ...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade700,
                  letterSpacing: 7,
                  fontSize: 22),
            ),
            Text(
              "WElCOME TO THE TEXT WORLD...!",
              style: TextStyle(
                  color: Colors.deepOrange.shade500,
                  fontStyle: FontStyle.italic,
                  fontSize: 22.5),
            )
          ],
        ),
      ),
    );
  }
}
// decorationThickness: 20
