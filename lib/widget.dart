// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

Color FundoApp = const Color.fromARGB(234, 255, 255, 255);
Color defaultColor = const Color.fromARGB(234, 102, 227, 175);
Color betaColor = Colors.blue;

ButtonStyle defaultButtom = ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 50),
    backgroundColor: const Color.fromARGB(234, 118, 238, 188),
    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ));

TextStyle defaultTitle = const TextStyle(
  fontSize: 60,
  color: Color.fromARGB(141, 0, 0, 0),
);
TextStyle defaultText =
    const TextStyle(fontSize: 16, color: Color.fromARGB(141, 0, 0, 0));

InputDecoration TextfildCadastro = InputDecoration(
  labelStyle: const TextStyle(color: Color.fromARGB(135, 0, 0, 0),),
  enabledBorder:
      UnderlineInputBorder(borderSide: BorderSide(color: defaultColor)),
  focusedBorder:
      UnderlineInputBorder(borderSide: BorderSide(color: defaultColor)),
  labelText: "",
);

ButtonStyle botaoPadrao = ElevatedButton.styleFrom(
    backgroundColor: defaultColor,
    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ));

//Search fild
InputDecoration CampoBusca = const InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    fillColor: Colors.white,
    filled: true);

//NavBar App
class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: BottomNavigationBar(
        selectedItemColor: defaultColor,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            label: "Navegar",
            icon: Icon(
              Icons.location_on,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "Viajar",
            icon: Icon(
              Icons.near_me,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "Ajustes",
            icon: Icon(
              Icons.settings,
              size: 35,
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
