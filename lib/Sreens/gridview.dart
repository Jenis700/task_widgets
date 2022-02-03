import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_widgets/Sreens/text.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.ac_unit),
                text: "GridView.count()",
              ),
              Tab(
                icon: Icon(Icons.ac_unit),
                text: "GridView.builder()",
              ),
              Tab(
                icon: Icon(Icons.ac_unit),
                text: "Images in \n Grid View",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecoundScreen(),
            ThirdScreen(),
          ],
        ),
      ),
    );
  }
}

//.........................First Screen.....................................................................................................

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      children: List.generate(
        choices.length,
        (index) {
          return Center(
            child: SelectCard(choice: choices[index]),
          );
        },
      ),
    );
  }
}

class Choice {
  String name;
  IconData icon;

  Choice({required this.icon, required this.name});
}

List<Choice> choices = <Choice>[
  Choice(icon: Icons.home, name: "Home"),
  Choice(icon: Icons.contacts, name: "Contact"),
  Choice(icon: Icons.map, name: "Map"),
  Choice(icon: Icons.phone, name: "Phone"),
  Choice(icon: Icons.camera_alt, name: "Camera"),
  Choice(icon: Icons.settings, name: "Setting"),
  Choice(icon: Icons.photo_album, name: "Album"),
  Choice(icon: Icons.wifi, name: "Wifi"),
];

class SelectCard extends StatelessWidget {
  SelectCard({Key, required this.choice}) : super(key: null);
  Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Card(
        elevation: 10,
        color: Colors.lightGreenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              choice.icon,
              size: 50,
              color: Colors.purple,
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                choice.name,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//.........................Secound Screen................................................................................

class SecoundScreen extends StatelessWidget {
  SecoundScreen({Key? key}) : super(key: key);

  List images = [
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://wallpaperaccess.com/full/1321365.jpg",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://i.pinimg.com/originals/4b/a7/22/4ba722ce1578f9931788a8aa7cfd3390.gif",
    "https://wallpaperaccess.com/full/1321365.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) => Container(
        margin: EdgeInsets.all(10),
        child: Image.network(
          images[index],
        ),
      ),
    );
  }
}

//.........................Third Screen................................................................................

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(bottom: 12),
            height: 350,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              children: [
                Image.asset("assets/bolly12.gif"),
                Image.asset("assets/bolly1.jpg"),
                Image.asset("assets/bolly13.gif"),
                Image.asset("assets/bolly2.jpg"),
                Image.asset("assets/bolly3.jpg"),
                Image.asset("assets/bolly4.jpg"),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset("assets/bolly5.jpg"),
                ),
                Image.asset("assets/bolly6.jpg"),
                Image.asset("assets/bolly7.jpg"),
                Image.asset("assets/bolly8.webp"),
              ],
            ),
          ),
          Container(
            height: 300,
            child: GridView.count(
              crossAxisCount: 1,
              reverse: true,
              scrollDirection: Axis.vertical,
              children: [
                Image.asset("assets/bolly14.gif"),
                Image.asset("assets/bolly10.jpg"),
                Image.asset("assets/bolly9.webp"),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset("assets/bolly8.webp"),
                ),
                Image.asset("assets/bolly7.jpg"),
                Image.asset("assets/bolly6.jpg"),
                Image.asset("assets/bolly5.jpg"),
                Image.asset("assets/bolly4.jpg"),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset("assets/bolly13.gif"),
                ),
                Image.asset("assets/bolly11.gif"),
                Image.asset("assets/bolly2.jpg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
