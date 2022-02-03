import 'package:flutter/material.dart';
import 'package:task_widgets/Sreens/alert_dialog.dart';
import 'package:task_widgets/Sreens/animation.dart';
import 'package:task_widgets/Sreens/calender.dart';
import 'package:task_widgets/Sreens/charts.dart';
import 'package:task_widgets/Sreens/checkbox.dart';
import 'package:task_widgets/Sreens/container.dart';
import 'package:task_widgets/Sreens/form.dart';
import 'package:task_widgets/Sreens/gridview.dart';
import 'package:task_widgets/Sreens/list.dart';
import 'package:task_widgets/Sreens/navigation_bar.dart';
import 'package:task_widgets/Sreens/progress_bar.dart';
import 'package:task_widgets/Sreens/radio_button.dart';
import 'package:task_widgets/Sreens/slider.dart';
import 'package:task_widgets/Sreens/snack_bar.dart';
import 'package:task_widgets/Sreens/stack.dart';
import 'package:task_widgets/Sreens/switch.dart';
import 'package:task_widgets/Sreens/tabbar.dart';
import 'package:task_widgets/Sreens/table.dart';
import 'package:task_widgets/Sreens/text_field.dart';
import 'package:task_widgets/Sreens/themes.dart';
import 'package:task_widgets/Sreens/toast.dart';
import 'package:task_widgets/Sreens/drawer.dart';
import 'package:task_widgets/Sreens/tool_tip.dart';
import 'Sreens/buttons.dart';
import 'Sreens/card.dart';
import 'Sreens/icons.dart';
import 'Sreens/image.dart';
import 'Sreens/row_column.dart';
import 'Sreens/scaffold.dart';
import 'Sreens/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Image.asset('assets/welcome2.jpg'),
            ),
            Stack(
              textDirection: TextDirection.ltr,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 260),
                  child: Image.asset(
                    "assets/bgi1.png",
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.only(top: 200, left: 95),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScaffoldScreen(),
                                ),
                              );
                            },
                            child: Text("Scaffold"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ContainerScreen(),
                                ),
                              );
                            },
                            child: Text("Container"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RowColumnScreen(),
                                ),
                              );
                            },
                            child: Text("Row & Column"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TextScreen(),
                                ),
                              );
                            },
                            child: Text("Text"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TextFieldScreen(),
                                ),
                              );
                            },
                            child: Text("TextField"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ButtonScreen(),
                                ),
                              );
                            },
                            child: Text("Buttons"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StackScreen(),
                                ),
                              );
                            },
                            child: Text("Stack"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FormScreen(),
                                ),
                              );
                            },
                            child: Text("Form"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlertDialogScreen(),
                                ),
                              );
                            },
                            child: Text("Alert Dialog"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => IconScreen(),
                                ),
                              );
                            },
                            child: Text("Icons"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ImageScreen(),
                                ),
                              );
                            },
                            child: Text("Images"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CardScreen(),
                                ),
                              );
                            },
                            child: Text("Cards"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TabBarScreen(),
                                ),
                              );
                            },
                            child: Text("Tabbar"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DrawerScreen(),
                                ),
                              );
                            },
                            child: Text("Drawer"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ListScreen(),
                                ),
                              );
                            },
                            child: Text("List"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GridViewScreen(),
                                ),
                              );
                            },
                            child: Text("Grid View"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ToastScreen(),
                                ),
                              );
                            },
                            child: Text("Toast"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChekBoxScreen(),
                                ),
                              );
                            },
                            child: Text("Check Box"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RadioButtonScreen(),
                                ),
                              );
                            },
                            child: Text("Radio Buttton"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProgressBarScreen(),
                                ),
                              );
                            },
                            child: Text("Progress Bar"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SnackBarScreen(),
                                ),
                              );
                            },
                            child: Text("Snack Bar"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ToolTipScreen(),
                                ),
                              );
                            },
                            child: Text("Tool Tip"),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SliderScreen(),
                                ),
                              );
                            },
                            child: Text("Slider"),
                          ),
                          SizedBox(height: 20),ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SwitchScreen(),
                                ),
                              );
                            },
                            child: Text("Switch"),
                          ),
                          SizedBox(height: 20),ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChartsScreen(),
                                ),
                              );
                            },
                            child: Text("Charts"),
                          ),
                          SizedBox(height: 20),ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavigationBarScreen(),
                                ),
                              );
                            },
                            child: Text("Navigation Bar"),
                          ),
                          SizedBox(height: 20),ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ThemeScreen(),
                                ),
                              );
                            },
                            child: Text("Theme"),
                          ),
                          SizedBox(height: 20),ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TableScreen(),
                                ),
                              );
                            },
                            child: Text("Table"),
                          ),
                          SizedBox(height: 20),ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CalenderScreen(),
                                ),
                              );
                            },
                            child: Text("Calender"),
                          ),
                          SizedBox(height: 20),ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black.withOpacity(0.4)),
                              elevation: MaterialStateProperty.all(3),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AnimationScreen(),
                                ),
                              );
                            },
                            child: Text("Animation"),
                          ),
                          SizedBox(height: 20),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
