import 'package:flutter/material.dart';


class  accueil extends StatefulWidget {
  const accueil ({super.key, required String title});

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
  int _selectedIndex = 0;
 final List<Widget> _widgetOptions =<Widget>[
  Container(

  ),
   Container(
     child: const Text(
       'Seach',
       style: TextStyle(fontSize: 40),
     ),
   ),
   Container(
     child: const Text(
       'Reservation',
       style: TextStyle(fontSize: 40),
     ),
   ),
   Container(
     color: Colors.green,
     alignment: Alignment.center,
     child: const Text(
       'Profil',
       style: TextStyle(fontSize: 40),
     ),

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

      body: _widgetOptions[_selectedIndex],
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
