import 'package:flutter/material.dart';

class ScaffoldScreen extends StatefulWidget {
  const ScaffoldScreen({Key? key}) : super(key: key);

  @override
  State<ScaffoldScreen> createState() => _ScaffoldScreenState();
}

class _ScaffoldScreenState extends State<ScaffoldScreen> {
  void selectedPart(int index) {
    setState(() {
      _selectedPart = index;
    });
  }

  int _selectedPart = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 250,
        height: MediaQuery.of(context).size.height * 0.8,
        child: Drawer(
          elevation: 100,
          child: Container(
            color: Colors.grey.shade200,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      "Scaffold",
                      style: TextStyle(
                        fontSize: 16.5,
                        wordSpacing: 4,
                        shadows: [
                          Shadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              offset: Offset.fromDirection(1, 2)),
                        ],
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                ),
                ListTile(
                  tileColor: Colors.white,
                  hoverColor: Colors.white,
                  selected: _selectedPart == 1,
                  onTap: () => selectedPart(1),
                  title: Text("Primary"),
                  selectedTileColor: Colors.black,
                  leading: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.purple,
                    size: 18,
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.black,
                  thickness: 0.5,
                ),
                ListTile(
                  selected: _selectedPart == 2,
                  onTap: () => selectedPart(2),
                  title: Text("Secoundary"),
                  leading: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.purple,
                    size: 18,
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.black,
                  thickness: 0.5,
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Scaffold Screen"),
      ),
      body: Center(
        child: Text("Welcome To The Scaffold Screen"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.2,
        backgroundColor: Colors.blue,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_reaction_outlined, color: Colors.black),
            label: "Hello",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_reaction_outlined,
              color: Colors.black,
            ),
            label: "Hello",
          )
        ],
      ),
    );
  }
}
