import 'package:flutter/material.dart';
import 'package:lightsUp/pages/home/homepage.dart';
import 'package:lightsUp/pages/search/search.dart';
import 'package:lightsUp/pages/home/createTeam.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'lightsUp';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    // Column(children: [
    HomePage(),
    // ]),
    // SearchPage(),
    Text(
      'Index 2: School',
      // style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Team Up'),
            backgroundColor: Colors.grey[900],
          ),
          backgroundColor: Colors.blueGrey[900],
          body: SingleChildScrollView(
            child: Container(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[900],
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.campaign_outlined),
              //   label: 'Search',
              //   backgroundColor: Colors.white,
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.build_circle_rounded),
                label: 'Settings',
                backgroundColor: Colors.white,
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateTeam()),
                );
              })),
    );
  }
}
