// ignore_for_file: body_might_complete_normally_nullable, use_build_context_synchronously

import 'package:find_transportes/Firebase/authFunctions.dart';
import 'package:find_transportes/Core/my_snackbar.dart';
import 'package:find_transportes/tela_login.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:flutter/material.dart';
import 'alertdialog_Termos.dart';

TextEditingController txtNomeCadastro = TextEditingController();
TextEditingController txtEmailCadastro = TextEditingController();
TextEditingController txtSenhaCadastro = TextEditingController();

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
final AuthService _authService = AuthService();

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
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                  
                    const SizedBox(height: 150),
                    Text("Cadastro",
                        style: defaultTitle),
                    const SizedBox(height: 50),
                    TextFormField(
                        controller: txtNomeCadastro,
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
                        controller: txtEmailCadastro,
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
                        controller: txtSenhaCadastro,
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
                                  : () async{
                                      _formCadastro.currentState?.validate() ??
                                          false;
                                      final regSucesso =
                                          await registeronFirebase();
                                      if (regSucesso) {
                                        _showAlertDialog();
                                      }
                                    },
                                    
                              child: const Text("Cadastrar"));
                        }),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text("Ja possui uma Conta? ", style: TextStyle(fontSize: 16),
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
                              fontSize: 16,
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
  Future<bool> registeronFirebase() async {
    String nome = txtNomeCadastro.text;
    String email = txtEmailCadastro.text;
    String senha = txtSenhaCadastro.text;

    final value = await _authService.cadastroUsuario(
        nome: nome, email: email, senha: senha);

    if (value.errorMessage != null) {
      showSnackbar(context: context, texto: value.errorMessage!);
      return false;
    } else {
      showSnackbar(
          context: context, texto: "Cadastro feito com sucesso", isErro: false);
      cleaner();
      return true;
    }
  }
}

cleaner() {
  txtEmailCadastro.clear();
  txtNomeCadastro.clear();
  txtSenhaCadastro.clear();
  txtEmailLogin.clear();
  txtSenhaLogin.clear();
}