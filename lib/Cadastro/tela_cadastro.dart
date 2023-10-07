// ignore_for_file: body_might_complete_normally_nullable

import 'package:find_transportes/tela_login.dart';
import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';
import 'alertdialog_Termos.dart';

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
  void _showAlertDialog() {
    CustomDialog.show(context);
  }

  bool senhaVisivel = true;

  final _formCadastro = GlobalKey<FormState>();
  final formValidVN = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FundoApp,
        body: SingleChildScrollView(
            child: Form(
          key: _formCadastro,
          onChanged: () {
            formValidVN.value = _formCadastro.currentState?.validate() ?? false;
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: SafeArea(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Icon(
                                Icons.arrow_back_ios_sharp,
                                color: Colors.grey,
                              ))))),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 170,
                      child: Image.asset("assets/LogoBoaRota.png"),
                    ),
                    Text("A informação que você precisa para o seu dia a dia.",
                        style: defaultText, textAlign: TextAlign.center),
                    const SizedBox(height: 10),
                    Text("Cadastro",
                        style: defaultTitle, textAlign: TextAlign.center),
                    const SizedBox(height: 10),
                    TextFormField(
                        controller: txtNome,
                        cursorColor: betaColor,
                        keyboardType: TextInputType.text,
                        maxLength: 30,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Nome Obrigatório';
                          }
                        },
                        decoration:
                            TextfildCadastro.copyWith(labelText: "Nome")),
                    TextFormField(
                        controller: txtEmail,
                        cursorColor: betaColor,
                        maxLength: 35,
                        keyboardType: TextInputType.emailAddress,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Email Obrigatório';
                          }
                        },
                        decoration:
                            TextfildCadastro.copyWith(labelText: "E-mail")),
                    TextFormField(
                        controller: txtSenha,
                        maxLength: 10,
                        keyboardType: TextInputType.text,
                        obscureText: senhaVisivel,
                        cursorColor: betaColor,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Senha Obrigatória';
                          }
                        },
                        decoration: TextfildCadastro.copyWith(
                          labelText: "Senha",
                          suffixIcon: GestureDetector(
                            child: Icon(
                              senhaVisivel == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onTap: () {
                              setState(() {
                                senhaVisivel = !senhaVisivel;
                              });
                            },
                          ),
                        )),
                    const SizedBox(height: 30),
                    ValueListenableBuilder<bool>(
                        valueListenable: formValidVN,
                        builder: (_, formValid, child) {
                          return ElevatedButton(
                              style: defaultButtom,
                              onPressed: !formValid
                                  ? null
                                  : () {
                                      _formCadastro.currentState?.validate() ??
                                          false;
                                      _showAlertDialog();
                                    },
                              child: const Text("Cadastrar"));
                        }),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text("ja possui uma Conta? ",
                            textAlign: TextAlign.center),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          child: Text(
                            " Entrar",
                            style: TextStyle(
                              color: betaColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
