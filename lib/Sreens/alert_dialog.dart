import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 125),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              onPressed: () {
                showAlert(context);
              },
              child: Text("Alert Dialog"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Alert Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}

showAlert(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );



  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("This Is An Alert Message"),
    actions: [
      okButton,
    ],
  );



  showDialog(
      context: context,
      builder: (BuildContext contex) {
        return alert;
      });
}
