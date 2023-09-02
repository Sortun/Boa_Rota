// ignore_for_file: body_might_complete_normally_nullable

import 'package:find_transportes/Mapa/maps.dart';
import 'package:find_transportes/Cadastro/tela_cadastro.dart';
import 'package:find_transportes/tela_inicial.dart';
import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';

TextEditingController txtEmail = TextEditingController();
TextEditingController txtSenha = TextEditingController();

void main() {
  runApp(const MaterialApp(
    title: 'Login App',
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool continuarLogado = false;
  // ignore: non_constant_identifier_names
  bool Senhavisivel = true;

  final formLogin = GlobalKey<FormState>();
  final formValidVN = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FundoApp,
        body: SingleChildScrollView(
            child: Form(
          key: formLogin,
          onChanged: () {
            formValidVN.value = formLogin.currentState?.validate() ?? false;
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: SafeArea(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Inicial()));
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
                      height: 200,
                      child: Image.asset(
                          "assets/LogoBoaRota.png"), //add logo neste path (mudar na linha 57 da punspec.yaml)
                    ),
                    Text("A informação que você precisa para o seu dia a dia.",
                        style: textpadrao, textAlign: TextAlign.center),
                    const SizedBox(height: 10),
                    Text("Login",
                        style: TituloInicial, textAlign: TextAlign.center),
                    const SizedBox(height: 20),
                    TextFormField(
                        controller: txtEmail,
                        cursorColor: const Color.fromARGB(234, 118, 238, 188),
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 35,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Usuário Obrigatório';
                          }
                        },
                        decoration: TextfildCadastro.copyWith(
                          labelText: "E-mail",
                          counterText: '',
                        )),
                    TextFormField(
                        controller: txtSenha,
                        maxLength: 10,
                        keyboardType: TextInputType.text,
                        obscureText: Senhavisivel,
                        cursorColor: const Color.fromARGB(234, 118, 238, 188),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Senha Obrigatório';
                          }
                        },
                        decoration: TextfildCadastro.copyWith(
                          counterText: '',
                          labelText: "Senha",
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Senhavisivel == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onTap: () {
                              setState(() {
                                Senhavisivel = !Senhavisivel;
                              });
                            },
                          ),
                        )),
                    const SizedBox(height: 20),
                    Row(children: [
                      Checkbox(
                        value: continuarLogado,
                        onChanged: (bool? checked) {
                          setState(() {
                            continuarLogado = checked ?? false;
                          });
                        },
                        activeColor: Corpadrao,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      const Text(
                        "Manter-se conectado?",
                        style: TextStyle(fontSize: 16),
                      ),
                      GestureDetector(
                        onTap: () {
                          //MAnterse conectado
                          // Navigator.of(context).push(MaterialPageRoute(
                          // builder: (context) => const ()));
                        },
                        child: const Text(
                          "",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      )
                    ]),
                    const SizedBox(height: 40),
                    ElevatedButton(
                        style: BotaoInicial,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Mapa()));
                        },
                        child: const Text("Entrar")),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text("Não possuí uma conta? ",
                            textAlign: TextAlign.center),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Cadastro()));
                          },
                          child: const Text(
                            "Cadastre-se",
                            style: TextStyle(
                              color: Colors.blue,
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
