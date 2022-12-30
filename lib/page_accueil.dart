import 'package:flutter/material.dart';


class  accueil extends StatefulWidget {
  const accueil ({super.key, required String title});

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Page accueille',
      style: optionStyle,
    ),
    Text(
      'Index 1: Page recherche',
      style: optionStyle,
    ),
    Text(
      'Index 2: Page réservation',
      style: optionStyle,
    ),
    Text(
      'Index 3: Page profil',
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

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color : Colors.black,),
            label: 'Home',

            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color : Colors.black,),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color : Colors.black,),
            label: 'Réservation'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color : Colors.black),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
