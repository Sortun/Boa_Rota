// ignore_for_file: unused_local_variable

import 'package:find_transportes/Firebase/firebase_options.dart';
import 'package:find_transportes/Core/loadingScreen.dart';
import 'package:find_transportes/tela_login.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final prefs = await SharedPreferences.getInstance();
  final bool continuarLogado = prefs.getBool('manterConectado') ?? false;

  runApp(App(continuarLogado: continuarLogado));
}

class App extends StatelessWidget {
  const App({super.key, required this.continuarLogado});

  final bool continuarLogado;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: betaColor,
          selectionColor: defaultColor,
        ),
      ),
      title: 'Boa Rota',
      debugShowCheckedModeBanner: false,
      home: RoteadorTela(continuarLogado: continuarLogado),
    );
  }
}

class RoteadorTela extends StatelessWidget {
  final bool continuarLogado;

  const RoteadorTela({super.key, required this.continuarLogado});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final user = snapshot.data;
          if (continuarLogado) {
            return const LoadingScreen();
          } else {
            return const Login();
          }
        }
        return const Login();
      },
    );
  }
}
