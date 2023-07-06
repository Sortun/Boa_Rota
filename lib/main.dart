import 'package:find_transportes/tela_inicial.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const App()
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplicativo de Transporte',
      debugShowCheckedModeBanner: false,
      home: Inicial(), // define a tela inicial do projeto
    );
  }
}
