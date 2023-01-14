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

     body: Column(
       children: [
         SizedBox(height: 115, width: 115,
           child: Stack(
             fit: StackFit.expand,
             // overflow : Overflow.visible,
             children: [
               CircleAvatar(
                 backgroundImage: AssetImage("assets/images/profil.png"),
                 backgroundColor: Color(0xfffafffb),
               ),
               Positioned(
                   right: -1,
                   bottom: 0,
                   child: SizedBox(
                     height: 46, width: 46,
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xff646c74),
                         padding: EdgeInsets.zero,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0)
                         ),
                       ),
                       onPressed: () {},
                       child: Icon(Icons.add_a_photo), //Image(image: AssetImage('assets/images/photo.png'),),
                     ),
                   )),
             ],
           ),
         ),
         SizedBox(height: 20,),
         //Premier boutton
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child:  ElevatedButton(

               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xfffafffb),
                 padding: EdgeInsets.all(20),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0)
                 ),
               ),
               onPressed: (){  },
               child: Row(
                 children: [
                   Icon(Icons.person, size: 20, color: Colors.black,),
                   SizedBox(width: 30,),
                   Expanded(child: Text("Mon compte",
                     style: TextStyle(
                       color: Colors.black,
                       //fontFamily: 'Poppins',
                       fontWeight: FontWeight.w700,
                       fontSize: 16,
                     ),
                   ),
                   ),
                   Icon(Icons.arrow_forward_ios, color: Colors.black,),
                 ],
               )
           ),
         ),
         //deuxième boutton
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child:  ElevatedButton(

               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xfffafffb),
                 padding: EdgeInsets.all(20),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0)
                 ),
               ),
               onPressed: (){},
               child: Row(
                 children: [
                   Icon(Icons.notifications, size: 20, color: Colors.black,),
                   SizedBox(width: 30,),
                   Expanded(child: Text("Notification",
                     style: TextStyle(
                       color: Colors.black,
                       //fontFamily: 'Poppins',
                       fontWeight: FontWeight.w700,
                       fontSize: 16,
                     ),
                   ),
                   ),
                   Icon(Icons.arrow_forward_ios, color: Colors.black,),
                 ],
               )
           ),
         ),
         //troisième boutton
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child:  ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xfffafffb),
                 padding: EdgeInsets.all(20),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0)
                 ),
               ),
               onPressed: (){},
               child: Row(
                 children: [
                   Icon(Icons.settings, size: 20, color: Colors.black,),
                   SizedBox(width: 30,),
                   Expanded(child: Text("Paramètre",
                     style: TextStyle(
                       color: Colors.black,
                       //fontFamily: 'Poppins',
                       fontWeight: FontWeight.w700,
                       fontSize: 16,
                     ),
                   ),
                   ),
                   Icon(Icons.arrow_forward_ios, color: Colors.black,),
                 ],
               )
           ),
         ),
         //quatrième boutton
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child:  ElevatedButton(

               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xfffafffb),
                 padding: EdgeInsets.all(20),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0)
                 ),
               ),
               onPressed: (){},
               child: Row(
                 children: [
                   Icon(Icons.help, size: 20, color: Colors.black,),
                   SizedBox(width: 30,),
                   Expanded(child: Text("Centre d'aide",
                     style: TextStyle(
                       color: Colors.black,
                       //fontFamily: 'Poppins',
                       fontWeight: FontWeight.w700,
                       fontSize: 16,
                     ),
                   ),
                   ),
                   Icon(Icons.arrow_forward_ios, color: Colors.black,),
                 ],
               )
           ),
         ),
         //cinquième boutton
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child:  ElevatedButton(

               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xfffafffb),
                 padding: EdgeInsets.all(20),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0)
                 ),
               ),
               onPressed: (){},
               child: Row(
                 children: [
                   Icon(Icons.logout, size: 20, color: Colors.black,),
                   SizedBox(width: 30,),
                   Expanded(child: Text("Se déconnecté",
                     style: TextStyle(
                       color: Colors.black,
                       //fontFamily: 'Poppins',
                       fontWeight: FontWeight.w700,
                       fontSize: 16,
                     ),
                   ),
                   ),
                   Icon(Icons.arrow_forward_ios, color: Colors.black,),
                 ],
               )
           ),
         ),

       ],
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
