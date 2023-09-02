import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Color FundoApp = const Color.fromARGB(234, 255, 255, 255);
// ignore: non_constant_identifier_names
Color Corpadrao = const Color.fromARGB(234, 118, 238, 188);

// ignore: non_constant_identifier_names
ButtonStyle BotaoInicial = ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 50),
    backgroundColor: const Color.fromARGB(234, 118, 238, 188),
    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ));

// ignore: non_constant_identifier_names
TextStyle textpadrao =
    const TextStyle(fontSize: 16, color: Color.fromARGB(141, 0, 0, 0));

// ignore: non_constant_identifier_names
TextStyle TituloInicial = const TextStyle(
  fontSize: 40,
  color: Color.fromARGB(141, 0, 0, 0),
);

// ignore: non_constant_identifier_names
InputDecoration TextfildCadastro = const InputDecoration(
  labelStyle: TextStyle(color: Color.fromARGB(135, 0, 0, 0)),
  enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(234, 118, 238, 188))),
  focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(234, 118, 238, 188))),
  labelText: "",
);

// ignore: non_constant_identifier_names
InputDecoration CampoBusca = const InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    fillColor: Colors.white,
    filled: true,
    prefixIcon: Icon(
      Icons.search,
    ),
    hintText: " Buscar Ponto");

ButtonStyle botaoPadrao = ElevatedButton.styleFrom(
    // minimumSize: const Size(double.infinity, 50),
    backgroundColor: const Color.fromARGB(234, 118, 238, 188),
    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ));
