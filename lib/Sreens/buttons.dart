import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

double _volume = 0.0;
double _volumeInk = 0.0;

class _ButtonScreenState extends State<ButtonScreen> {
  String msg = "I want become a fullstack developer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Screen"),
      ),

      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 230),
            child: Column(
              children: [
                Center(
                  child: Text(
                    msg,
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    onPressed: _onClick,
                    child: Text("Click Me"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 290, left: 25),
            child: Text(
              "(Raised Button)",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.brown,
                shadows: [
                  Shadow(
                    color: Colors.green,
                    offset: Offset(2, 2),
                    blurRadius: 9,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 435,
            thickness: 2,
            endIndent: 40,
            indent: 40,
          ),
//......................... Icons Buttons ...............................................................................................................
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 90, left: 150),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _volume += 5;
                    });
                  },
                  icon: Icon(
                    Icons.volume_up,
                    size: 36,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 145),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _volume -= 5;
                    });
                  },
                  icon: Icon(
                    Icons.volume_up,
                    size: 36,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 60),
            child: Text(
              "Speker Volume $_volume",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180, left: 25),
            child: Text(
              "(Icon Button)",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.brown,
                shadows: [
                  Shadow(
                    color: Colors.green,
                    offset: Offset(2, 2),
                    blurRadius: 9,
                  ),
                ],
              ),
            ),
          ),

//........................................................................................................................................................
          Divider(
            height: 680,
            thickness: 2,
            endIndent: 40,
            indent: 40,
          ),
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(top: 380, left: 150),
            child: InkWell(
              splashColor: Colors.yellow,
              highlightColor: Colors.green.shade900.withOpacity(0.5),
              child: Icon(
                Icons.ring_volume,
                size: 35,
              ),
              onTap: () {
                setState(() {
                  _volumeInk += 10;
                });
              },
            ),
          ),
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(top: 445, left: 150),
            child: InkWell(
              splashColor: Colors.yellow,
              highlightColor: Colors.green.shade900.withOpacity(0.5),
              child: Icon(
                Icons.ring_volume,
                size: 35,
              ),
              onTap: () {
                setState(() {
                  _volumeInk -= 10;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 350, left: 150),
            child: Text(
              "$_volumeInk",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 360, left: 25),
            child: Text(
              "(InkWell Button)",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.brown,
                shadows: [
                  Shadow(
                    color: Colors.green,
                    offset: Offset(2, 2),
                    blurRadius: 9,
                  ),
                ],
              ),
            ),
          ),

//......................... Ink Well Buttons .............................................................................................................
          Container(
            margin: EdgeInsets.only(top: 305),
            child: Divider(
              height: 1000,
              thickness: 2,
              endIndent: 40,
              indent: 40,
            ),
          ),

//........................................................................................................................................................
          Container(
            margin: EdgeInsets.only(top: 515, left: 150),
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Outline"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  Colors.green.withOpacity(0.9),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.green.withOpacity(0.2),
                ),
                shadowColor: MaterialStateProperty.all(
                  Colors.red.withOpacity(0.9),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 562),
            child: Divider(
              thickness: 2,
              endIndent: 40,
              indent: 40,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 530, left: 25),
            child: Text(
              "(Outline Button)",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.brown,
                shadows: [
                  Shadow(
                    color: Colors.green,
                    offset: Offset(2, 2),
                    blurRadius: 9,
                  ),
                ],
              ),
            ),
          ),

          Container(margin: EdgeInsets.only(top: 585,right: 55),
            child: ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("JavaScipt"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Flutter"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Dart"),
                ),
              ],
            ),
          ),Container(
            margin: EdgeInsets.only(top: 575, left: 25),
            child: Text(
              "(Button Bar)",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.brown,
                shadows: [
                  Shadow(
                    color: Colors.green,
                    offset: Offset(2, 2),
                    blurRadius: 9,
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

//.......................floting Acction Buttons............................................................................................................

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   hoverColor: Colors.red,
      //   focusColor: Colors.red,
      //   child: Icon(
      //     Icons.add,
      //     size: 32,
      //   ),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Love"),
        extendedIconLabelSpacing: 10,
        icon: Icon(Icons.eleven_mp),
      ),
    );
  }

//........................... Fuction of RaisedButton .................................................................................................

  _onClick() {
    setState(() {
      if (msg.startsWith("I")) {
        msg = "Yesssss I'Mmmmmmmmm";
      } else {
        msg = "I want become a fullstack developer";
      }
    });
  }
}
