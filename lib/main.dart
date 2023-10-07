import 'package:find_transportes/Firebase/firebase_options.dart';
import 'package:find_transportes/tela_inicial.dart';
import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: betaColor,
          selectionColor: defaultColor
        ),
      ),
      title: 'Aplicativo de Transporte',
      debugShowCheckedModeBanner: false,

      // define a tela inicial do projeto
      home: const Inicial(),
    );
  }
}
