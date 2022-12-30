import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';

class page_inscription extends StatefulWidget {
  const page_inscription({Key? key, required String title}) : super(key: key);

  @override
  State<page_inscription> createState() => _page_inscriptionState();
}

class _page_inscriptionState extends State<page_inscription> {
  int _selectedIndex = 0;
  final _nameController = TextEditingController();
  String? _sexe;
  final formKey = new GlobalKey<FormState>();
  String _name = "Marcos";
  bool _loading = false;
  bool _displayInfo = false;

  displayDialog(BuildContext context) async => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text("Etes-vous sûr de vouloir soumettre le formulaire ?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'ok');
                setState(() {
                  _loading = true;
                });
                Future.delayed(const Duration(seconds: 5), () {
                  setState(() {
                    _loading = false;
                    _name = _nameController.text;
                    _displayInfo = true;
                  });
                });
              },
              child: const Text('OK'),
            )
          ],
        );
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  scale: 4,
                ),

              ),

              Align(


              ),


              Align(
                // alignment: Alignment(0.005, -0.324),
                child: Text(
                  'INSCRIPTION',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 27,
                    color: const Color(0xff656d74),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ), //Ecriture connexion
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Quel est votre nom',
                          labelText: 'Nom & Prénom *'),
                      validator: (String? value) {
                        return (value == null || value == "")
                            ? "Ce champ est obligatoire"
                            : null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Entrez votre email',
                          labelText: 'Email*'),
                      validator: (String? value) {
                        return (value == null || value == "")
                            ? "Ce champ est obligatoire"
                            : null;
                      },
                    ),
                    DropdownButtonFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: new InputDecoration(
                          icon: Icon(Icons.transgender),
                          hintText: 'Ton sexe!!',
                          labelText: 'Sexe *'),
                      value: _sexe,
                      onChanged: (String? v) async {
                        setState(() {
                          _sexe = v;
                        });
                      },
                      items: <String>['Masculin', 'Féminin', 'Extraterrestre']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      validator: (str) =>
                          str == null ? "Ce champ est obligatoire" : null,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      obscureText: true,
                      controller: null,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Définir votre mot de passe',
                          labelText: 'Mot de passe *'),
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
                          hintText: 'confirmer',
                          labelText: 'Confirmer mots de passe'),
                      validator: (String? value) {
                        return (value == null || value == "")
                            ? "Ce champ est obligatoire"
                            : null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              displayDialog(context);
                            }
                          },
                          child: Text("Valider"),
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
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
