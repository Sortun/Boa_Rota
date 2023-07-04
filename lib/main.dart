import 'package:find_transportes/tela_inicial.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    App()
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplicativo de Transporte',
      debugShowCheckedModeBanner: false,
      home: Inicial(), // define a tela inicial do projeto
    );
  }
}

