import 'package:find_transportes/Cadastro/tela_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:find_transportes/widget.dart';
import 'package:find_transportes/tela_login.dart';

void main() {
  runApp(const Inicial());
}

class Inicial extends StatelessWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FundoApp,
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/LogoBoaRota.png"),
              ),
              Text("A informação que você precisa para o seu dia a dia.",
                  style: defaultText, textAlign: TextAlign.center),
              const SizedBox(height: 250),
              SizedBox(
                  child: Column(children: [
                ElevatedButton(
                  style: defaultButtom,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text('Entrar'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Ainda não se Cadastrou?',
                  style: defaultText,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: defaultButtom,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Cadastro()));
                  },
                  child: const Text('Cadastrar'),
                )
              ]))
            ],
          ))),
    );
  }
}
