import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: "Simple \n List",
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "Long List",
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: "Grid List",
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "Horizontal \n List",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BasicList(),
              LongLis(),
              GridList(),
              HorizontalList(),
            ],
          )),
    );
  }
}
//................................ BasicList ............................................................................................

class BasicList extends StatelessWidget {
  const BasicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Map"),
          leading: Icon(Icons.map),
        ),
        ListTile(
          title: Text("Settings"),
          leading: Icon(Icons.settings),
        ),
        ListTile(
          title: Text("Contact"),
          leading: Icon(Icons.contacts),
        ),
        ListTile(
          title: Text("Phone"),
          leading: Icon(Icons.phone),
        ),
        ListTile(
          title: Text("Album"),
          leading: Icon(Icons.photo_album),
        ),
      ],
    );
  }
}

//................................ LongLis ............................................................................................

class LongLis extends StatelessWidget {
  LongLis({Key? key}) : super(key: key);

  var meet = List.generate(200, (index) => "List No : $index");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meet.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(meet[index]),
          leading: Icon(Icons.settings),
        );
      },
    );
  }
}

//................................ GridList ............................................................................................

class GridList extends StatelessWidget {
  const GridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("This Is A Grid List"));
  }
}

//................................ HorizontalList ............................................................................................

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.6),
              border: Border.all(
                color: Colors.orange.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.6),
              border: Border.all(
                color: Colors.green.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                Text("Phone"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.6),
              border: Border.all(
                color: Colors.red.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.map),
                Text("Map"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings),
                Text("Setting"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.6),
              border: Border.all(
                color: Colors.purple.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add),
                Text("About Us"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.yellow.withOpacity(0.6),
              border: Border.all(
                color: Colors.yellow.shade800,
                style: BorderStyle.solid,
                width: 2.9,
              ),
            ),
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.remove),
                Text("Home"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.6),
              border: Border.all(
                color: Colors.blue.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.6),
              border: Border.all(
                color: Colors.grey.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.6),
              border: Border.all(
                color: Colors.pink.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent.withOpacity(0.6),
              border: Border.all(
                color: Colors.lightGreenAccent.shade700,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.cyanAccent.withOpacity(0.6),
              border: Border.all(
                color: Colors.cyan.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.6),
              border: Border.all(
                color: Colors.amber.shade900,
                style: BorderStyle.solid,
                width: 2.5,
              ),
            ),
            width: 100,
            child: Row(
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
