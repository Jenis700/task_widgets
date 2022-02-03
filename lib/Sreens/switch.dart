import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MySwitchPage(),
          Divider(
            thickness: 2,
            height: 70,
          ),
          SizedBox(
            height: 30,
          ),
          CustomizeSwitchPage(),
        ],
      ),
    );
  }
}

class MySwitchPage extends StatefulWidget {
  const MySwitchPage({Key? key}) : super(key: key);

  @override
  _MySwitchPageState createState() => _MySwitchPageState();
}

class _MySwitchPageState extends State<MySwitchPage> {
  bool isSwitched = false;
  var textValue = "OFF";

  void checkValue(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = "ON";
      });
      print("Switch is : ON");
    } else {
      setState(() {
        isSwitched = false;
        textValue = "OFF";
      });
      print("Switch is : OFF");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 1.7,
          child: Center(
            child: Column(
              children: [
                Switch(
                  value: isSwitched,
                  onChanged: checkValue,
                  activeColor: Colors.blue,
                  activeTrackColor: Colors.yellow,
                  inactiveThumbColor: Colors.redAccent,
                  inactiveTrackColor: Colors.orange,
                ),
                Text("Switch Buttons is : $textValue"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomizeSwitchPage extends StatefulWidget {
  const CustomizeSwitchPage({Key? key}) : super(key: key);

  @override
  _CustomizeSwitchPageState createState() => _CustomizeSwitchPageState();
}

class _CustomizeSwitchPageState extends State<CustomizeSwitchPage> {
  bool itIsChecked = false;
  var text = "OFF";



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterSwitch(
            value: itIsChecked,
            onToggle: (value) {
              setState(() {
                itIsChecked = value;
                text = "$value";
              });
            }),
        SizedBox(
          height: 10,
        ),
        Text("Coustom Is Switch Buttons Is : $text"),
      ],
    );
  }
}
