import 'package:find_transportes/tela_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:find_transportes/widget.dart';

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
                width: 200, height: 200,
                child: Image.asset(
                    "assets/logoteste.png"), //add logo neste path (mudar na linha 57 da punspec.yaml)
              ),
              Text('Nome do App', //Mudar o texto
                style: TituloInicial,
                textAlign: TextAlign.center,),
              const SizedBox(height: 10),
                  Text("A informação que você precisa para o seu dia a dia.",
                      style: SubtituloInicial,
                      textAlign: TextAlign.center),
              const SizedBox(height: 200),
              SizedBox(
                  child: Column(children: [
                ElevatedButton(
                  style: BotaoInicial,
                  onPressed: () {},
                  child: const Text('Entrar'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Ainda não se Cadastrou?',
                  style: SubtituloInicial,
                  textAlign: TextAlign.center,),
                  
                const SizedBox(height: 10),
                ElevatedButton(
                  style: BotaoInicial,
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
