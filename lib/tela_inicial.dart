import 'package:find_transportes/tela_cadastro.dart';
import 'package:flutter/material.dart';
import 'widget.dart';

void main() {
  runApp(const Inicial());
}

class Inicial extends StatelessWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter', home: MyHomePage(), 
    debugShowCheckedModeBanner: false,);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FundoApp,
      body: Padding(
          padding: const EdgeInsets.all(20),
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

              const Center(
                  child: Text(
                'Nome do App', //Mudar o texto
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold, 
                  color: Color.fromARGB(141, 0, 0, 0)))),

              const SizedBox(height: 10),
              const Center(
                  child: Text(
               "A informação que você precisa para o seu dia a dia.", 
                style: TextStyle(
                  fontSize: 14, 
                  color: Color.fromARGB(141, 0, 0, 0)))),

              const SizedBox(height: 200),

              SizedBox(child: 
              Column(children: [
                ElevatedButton(
                    child: Text('Entrar'),
                    style: BotaoInicial, 
                    onPressed: () {},),

                const SizedBox(height: 20),

                const Center(
                  child: Text(
                'Ainda não se Cadastrou?', 
                style: TextStyle(
                  fontSize: 14, 
                  
                  color: Color.fromARGB(146, 0, 0, 0)),
              )),

              const SizedBox(height: 10),

                ElevatedButton(
                    child: Text ('Cadastrar'),
                    style: BotaoInicial, 
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Cadastro()) 
                      );
                    },)
              ]))
            ],
          ))),
    );
  }
}