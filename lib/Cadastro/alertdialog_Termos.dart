// ignore_for_file: file_names
import 'package:find_transportes/Ajustes/SobreNos/termsOfUse.dart';
import 'package:find_transportes/tela_login.dart';
import 'package:flutter/material.dart';
import 'package:find_transportes/Core/widget.dart';

class CustomDialog {
  static void show(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          bool aceitotermos = false;

          return AlertDialog(
              backgroundColor: FundoApp,
              elevation: 8,
              scrollable: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              title: const Text('Atenção', style: TextStyle(fontSize: 24)),
              content: StatefulBuilder(builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return SizedBox(
                  width: 300,
                  height: 110,
                  child: Column(
                    children: [
                      Row(children: [
                        Checkbox(
                          value: aceitotermos,
                          onChanged: (bool? checked) {
                            setState(() {
                              aceitotermos = checked ?? false;
                            });
                          },
                          activeColor: defaultColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0)),
                        ),
                        const SizedBox(width: 2),
                        const Text('Aceitar os',
                            style: TextStyle(fontSize: 18)),
                        MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const TermsOfUse()));
                                },
                                child: Text(' Termos de Uso?',
                                    style: TextStyle(
                                        fontSize: 18, color: betaColor)))),
                      ]),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: ElevatedButton(
                                  style: botaoPadrao,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cancelar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center))),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: ElevatedButton(
                                style: botaoPadrao,
                                onPressed: !aceitotermos
                                    ? null
                                    : () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Login()));
                                      },
                                child: const Text('Aceitar',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    textAlign: TextAlign.center)),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }),
              actions: const []);
        });
  }
}
