import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card Screen"),
        ),
        body: Container(
          height: 180,
          width: 300,
          margin: EdgeInsets.only(top: 200, left: 30),
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey.withOpacity(0.8),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.album, size: 50),
                  title: Text("Badshah Song"),
                  subtitle: Text("main pani pani ho gayi song..."),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.purple,
                      onPressed: () {},
                      child: Text("Play"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                      ),
                      onPressed: () {},
                      child: Text("Pause"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
