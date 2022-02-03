import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

BestTutorSite _site = BestTutorSite.javatpoint;

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button  Screen"),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text("www.javatpoint.com"),
            value: BestTutorSite.javatpoint,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("www.w3school.com"),
            value: BestTutorSite.w3schools,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
          RadioListTile(
            title: Text('www.tutorialandexample.com'),
            value: BestTutorSite.tutorialandexample,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }
