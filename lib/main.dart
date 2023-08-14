import 'package:find_transportes/tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

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
      // define a tela inicial do projeto
      home: Inicial(), 
    );
  }
}

 