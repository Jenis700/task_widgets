import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Screen"),
      ),
      body: myFormFieldState(),
    );
  }
}

class myFormFieldState extends StatefulWidget {
  const myFormFieldState({Key? key}) : super(key: key);

  @override
  _myFormFieldStateState createState() => _myFormFieldStateState();
}

final _formKey = GlobalKey<FormState>();

class _myFormFieldStateState extends State<myFormFieldState> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Some Text";
              }
              return null;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle_rounded),
              hoverColor: Colors.red,
              hintText: "Enter Your Name",
              label: Text("Name"),
            ),
          ),
          TextFormField(keyboardType: TextInputType.phone,maxLength: 10,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Some Text";
              }
              return null;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle_rounded),
              hoverColor: Colors.red,
              hintText: "Enter Your Phone Number",
              label: Text("Phone"),
              suffixText: "10 Digits",
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Some Text";
              }
              return null;
            },
            decoration: InputDecoration(
                icon: Icon(Icons.account_circle_rounded),
                hoverColor: Colors.red,
                hintText: "Enter Birthdate",
                label: Text("Dob"),
                suffixText: "Ex. 1st January, 2001"),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Data is in processing.')));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
