// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:testvscode/calendar.dart';
import 'package:testvscode/note.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(192, 20, 2, 44));
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Home(),
    Note(),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 0,
        toolbarHeight: 60,
        title: Stack(
          children: [
            Positioned(
              child: const Text(
                '         Boat Note            ',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
                right: 0,
                top: 0,
                width: 35,
                height: 35,
                child: FloatingActionButton(
                  onPressed: () => {},
                  child: Icon(Icons.search),
                  backgroundColor: Color.fromARGB(255, 209, 56, 236),
                )),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 209, 56, 236),
        /*const Text('Boat Note'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 209, 56, 236),
          child :FloatingActionButton(
            onPressed: () => {},
            child: Icon(Icons.search),
            )*/
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 209, 56, 236),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            backgroundColor: Color.fromARGB(255, 209, 56, 236),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            backgroundColor: Color.fromARGB(255, 209, 56, 236),
            label: 'Notes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            backgroundColor: Color.fromARGB(255, 209, 56, 236),
            label: 'setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 245, 244, 247),
        onTap: _onItemTapped,
      ),
      //backgroundColor: Color.fromARGB(255, 97, 96, 96),   //sfondo delle facciate
    );
  }
}
//style: TextStyle(fontSize: 20),
//icone
//https://api.flutter.dev/flutter/material/Icons-class.html