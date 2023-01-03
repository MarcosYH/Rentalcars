import 'package:flutter/material.dart';


class  accueil extends StatefulWidget {
  const accueil ({super.key, required String title});

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
  GlobalKey<ScaffoldState> _globalKey= GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
 final List<Widget> _widgetOptions =<Widget>[
  Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(
        "ACCEUIL",
        style: TextStyle(
          fontFamily: 'Montserrat',
        fontSize: 20,
        color: const Color(0xff656d74),
        fontWeight: FontWeight.w700,),
        ),

      iconTheme: IconThemeData(color: Colors.black),
    ),
    drawer: Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Colors.blueGrey,
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                     //margin: EdgeInsets.only(bottom: 10),
                     height: 100,
                      decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                    Text(
                      "RENTALCARS",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Rentalcars@gmail.com",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),

              )

            ],
          ),
        ),
      ),
    ),


  ),
   Scaffold(

   ),
   Scaffold(

   ),
   Scaffold(

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
