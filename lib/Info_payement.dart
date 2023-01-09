import 'package:flutter/material.dart';

class info_payement extends StatefulWidget {
  const info_payement({Key? key, required String title}) : super(key: key);

  @override
  State<info_payement> createState() => _info_payementState();
}

class _info_payementState extends State<info_payement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),

          child: Column(
            children: [
              const Spacer(),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                     // controller: cardNumberController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        //FilteringTextInputFormatter.digitsOnly,
                      //  LengthLimitingTextInputFormatter(19),
                      ],
                      decoration: InputDecoration(hintText: "Numéro de carte"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        decoration:
                        const InputDecoration(hintText: "Nom complet"),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                           //   FilteringTextInputFormatter.digitsOnly,
                              // Limit the input
                           //   LengthLimitingTextInputFormatter(4),
                            ],
                            decoration: const InputDecoration(hintText: "CVV"),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                             // FilteringTextInputFormatter.digitsOnly,
                            //  LengthLimitingTextInputFormatter(5),
                            ],
                            decoration:
                            const InputDecoration(hintText: "MM/AA"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  child: const Text("Add card"),
                  onPressed: () {},
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
