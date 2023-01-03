import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
import './page_connexion.dart';
import './page_inscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.blue,

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafdff),

      body: Stack(
        children: <Widget> [
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 406.0, start: 0.0),
            child: Container(

              decoration: BoxDecoration(
                color: const Color(0xff6c80fe),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1f000000),
                    offset: Offset(0, 15),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
          ),// Couleur bleu en fond

          Pinned.fromPins(
            Pin(size: 310.0, start: -115.0),
            Pin(size: 310.0, start: -173.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff61e0dd),
                borderRadius:
                BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),//positionnement de la couleur en haut à gauche

          Pinned.fromPins(
            Pin(size: 310.0, end: -144.0),
            Pin(size: 310.0, middle: 0.3586),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffbaf85f),
                borderRadius:
                BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),//Positionnement de la couleur vert façon là

          Pinned.fromPins(
            Pin(start: -74.8, end: -74.8),
            Pin(size: 450, middle: 0.6),
            child: Image.asset("assets/images/voiture_white.png",),
          ), // Positionnement de l'image de la voiture

          Align(
            alignment: Alignment(-0.077, 0.664),
            child: SizedBox(
              width: 232.0,
              height: 45.0,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: ElevatedButton(
                        child: Text(
                          'Connexion',),
                          style: ElevatedButton.styleFrom (
                          backgroundColor: const Color(0xff2195f2),
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                            minimumSize: Size(232.0, 45.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const page_connexion(title: "connexion") )
                            );
                          },
                      ),
                    ),
                  ],
                ),
            ),
          ),// boutton connexion avec couleur gris fonçé

          Pinned.fromPins(
            Pin(start: 30.0, end: 30.0),
            Pin(size: 45.0, end: 45.0),
              child: Stack(
                children: <Widget>[
                  Center(
                      child: ElevatedButton(
                        child: Text(
                          'Créé un compte', ),
                        style: ElevatedButton.styleFrom (
                          backgroundColor: const Color(0xff2194f1),
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                          minimumSize: Size(350.0, 45.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const page_inscription(title : "inscription") )
                          );
                        },
                      ) //boutton 'créé un compte'
                  ),
                ],
              ),
          ),//Positionnement de la couleur gris du bouton 'créé un compte'

          Pinned.fromPins(
            Pin(size: 177.0, middle: 0.40),
            Pin(size: 133.0, start: 70),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/images/logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),//positionnement du logo

          Align(
            alignment: Alignment(-0.100, -0.496),
            child: SizedBox(
              width: 125.0,
              height: 70.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: const Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Rental Cars',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),//Nom de l'app

        ],


          ),

    );
  }
}

