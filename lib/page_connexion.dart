import 'package:flutter/material.dart';
import './page_accueil.dart';
import 'package:adobe_xd/adobe_xd.dart';

class page_connexion extends StatefulWidget {
  const page_connexion({Key? key, required String title}) : super(key: key);

  @override
  State<page_connexion> createState() => _page_connexionState();
}

class _page_connexionState extends State<page_connexion> {
  String _email = "";
  String _motspass = "";
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("connexion"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                // alignment: Alignment(0.005, -0.9),
                child: Image.asset(
                  "assets/images/logo.png",
                  scale: 4,
                ),
              ),
              Align(
                // alignment: Alignment(0.005, -0.324),
                child: Text(
                  'Connexion',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 27,
                    color: const Color(0xff656d74),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ), //Ecriture connexion
              Form(child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Entrez votre adresse email',
                        labelText: 'Email'),
                    validator: (String? value) {
                      return (value == null || value == "")
                          ? "Ce champ est obligatoire"
                          : null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    obscureText: true,
                    controller: null,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Entrez votre mot de passe',
                        labelText: 'Mot de passe *'),
                    validator: (String? value) {
                      return (value == null || value == "")
                          ? "Ce champ est obligatoire"
                          : null;
                    },
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const accueil(title:'accueil') )
                        );
                      }, child: Text("Valider"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                          minimumSize: Size(232.0, 45.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),),
                    ],
                  ),
                ],
              ))

            ],
          ),
        ),

      ),
    );
  }
}
//Align(
//child: Text.rich(
//TextSpan(
//style: TextStyle(
//fontFamily: 'Montserrat',
//fontSize: 12,
//color: const Color(0xff656d74),
//),
//children: [
//TextSpan(
//text: 'Vous n\'avez pas de compte ?',
//),
//TextSpan(
//text: 'créé un compte',
//style: TextStyle(
//color: const Color(0xffbfa780),
//fontWeight: FontWeight.w700,
//),),],),),) ,// écrit en bas de la page>
