import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conatiner Screen"),
      ),
      body: ShowSnack(),
    );
  }
}

class ShowSnack extends StatelessWidget {
  const ShowSnack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Snack Bar"),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("This is A SnackBar..."),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: "UNDO",
              onPressed: () {},
            ),
          );Scaffold.of(context).showSnackBar(snackBar);

        },
      ),
    );
  }
}


