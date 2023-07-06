import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';

TextEditingController txtNome = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtSenha = TextEditingController();


void main() {
  runApp(const MaterialApp(
    title: 'Cadastro App',
    home: Cadastro(),
    debugShowCheckedModeBanner: false,
  ));
}

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FundoApp,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: const Color.fromARGB(157, 0, 0, 0),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.transparent,
        elevation: 0, //tira a sombra da app bar
      ),
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset(
                    "assets/logoteste.png"), //add logo neste path (mudar na linha 57 da punspec.yaml)
              ),
              const SizedBox(height: 10),
              Text(
                'Nome do App', //Mudar o texto
                style: TituloInicial,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text("A informação que você precisa para o seu dia a dia.",
                  style: SubtituloInicial, textAlign: TextAlign.center),
              const SizedBox(height: 30),    

              const Text("Cadastro",
              style: TextStyle(color: 
             Color.fromARGB(255, 106, 212, 168),
             fontSize: 30),
              textAlign: TextAlign.center),


              TextField(
                controller: txtNome,
                cursorColor: const Color.fromARGB(234, 118, 238, 188),
                keyboardType: TextInputType.text,
                decoration: TextfildCadastro.copyWith(labelText: "Nome")),
              TextField(
                controller: txtEmail,
                cursorColor: const Color.fromARGB(234, 118, 238, 188),
                keyboardType: TextInputType.text,
                decoration: TextfildCadastro.copyWith(labelText: "Email")),
              TextField(
                controller: txtSenha,
                cursorColor: const Color.fromARGB(234, 118, 238, 188),
                keyboardType: TextInputType.text,
                decoration: TextfildCadastro.copyWith(labelText: "Senha")),

              const SizedBox(height: 50), 
              ElevatedButton(
                style: BotaoInicial,
                  onPressed: () {}, child: Text("Login")),

                const SizedBox(height: 10),
              Row(children: [
              Text("ja possui uma Conta? ", textAlign: TextAlign.center),
             
               Text(" Entrar", textAlign: TextAlign.center),
              ])













           
            ],
          ))),
    );
  }
}
