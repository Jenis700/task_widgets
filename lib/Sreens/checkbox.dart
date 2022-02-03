import 'package:flutter/material.dart';

class ChekBoxScreen extends StatefulWidget {
  const ChekBoxScreen({Key? key}) : super(key: key);

  @override
  State<ChekBoxScreen> createState() => _ChekBoxScreenState();
}

bool isChecked = false;
bool firstvalue = false;
bool secoundvalue = false;
bool Thirdvalue = false;

class _ChekBoxScreenState extends State<ChekBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Check Box Without Header And Title"),
                Checkbox(
                  value: firstvalue,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        firstvalue = value!;
                      },
                    );
                  },
                ),
                Checkbox(
                    value: secoundvalue,
                    onChanged: (bool? value) {
                      setState(() {
                        secoundvalue = value!;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Text("Check Box With Header And Title"),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: 300,
                  child: CheckboxListTile(
                    tileColor: Colors.grey.withOpacity(0.5),
                    title: Text("Check! Mate..."),
                    subtitle: Text("Cheked Mate"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    secondary: Icon(
                      Icons.beach_access,
                      color: Colors.black,
                    ),
                    activeColor: Colors.green,
                    // splashRadius: 50,
                    value: isChecked,
                    controlAffinity: ListTileControlAffinity.platform,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: CheckboxListTile(
                    tileColor: Colors.grey.withOpacity(0.5),
                    secondary: Icon(
                      Icons.alarm,
                      color: Colors.black,
                    ),
                    title: Text("Ringing At 4:30 PM Every Day"),
                    subtitle: Text(
                      "Ringing After 6:45 Hours",
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(width: 2, style: BorderStyle.solid),
                    ),
                    selected: true,
                    selectedTileColor: Colors.green.withOpacity(0.5),
                    value: Thirdvalue,
                    onChanged: (bool? value) {
                      setState(
                        () {
                          Thirdvalue = value!;
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
