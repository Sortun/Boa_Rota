// ignore_for_file: body_might_complete_normally_nullable

import 'package:find_transportes/Cadastro/tela_cadastro.dart';
import 'package:find_transportes/Mapa/loadingScreen.dart';
import 'package:find_transportes/Core/my_snackbar.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:flutter/material.dart';
import 'package:find_transportes/Firebase/authFunctions.dart';
import 'package:shared_preferences/shared_preferences.dart';

TextEditingController txtEmailLogin = TextEditingController();
TextEditingController txtSenhaLogin = TextEditingController();

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
  final AuthService _authService = AuthService();
  bool continuarLogado = false;
  bool senhavisivel = true;

  final formLogin = GlobalKey<FormState>();
  final formValidVN = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _loadLoginState(); // Carrega o estado "Manter-se conectado" das preferências compartilhadas.
  }

  // Função para carregar o estado "Manter-se conectado" das preferências compartilhadas.
  _loadLoginState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      continuarLogado = prefs.getBool('continuarLogado') ?? false;
    });
  }

  // Função para salvar o estado "Manter-se conectado" nas preferências compartilhadas.
  _saveLoginState(bool state) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('continuarLogado', state);
  }

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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const SizedBox(height: 150),
                      Text("Login", style: defaultTitle),
                      const SizedBox(height: 50),
                      TextFormField(
                        controller: txtEmailLogin,
                        cursorColor: betaColor,
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
                        ),
                      ),
                      TextFormField(
                          controller: txtSenhaLogin,
                          maxLength: 10,
                          keyboardType: TextInputType.text,
                          obscureText: senhavisivel,
                          cursorColor: betaColor,
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
                                senhavisivel == true
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onTap: () {
                                setState(() {
                                  senhavisivel = !senhavisivel;
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
                              _saveLoginState(continuarLogado);
                            });
                          },
                          activeColor: defaultColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                        const Text(
                          "Manter-se conectado?",
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 12, color: betaColor),
                          ),
                        )
                      ]),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: defaultButtom,
                          onPressed: () async {
                            String email = txtEmailLogin.text;
                            String senha = txtSenhaLogin.text;
                            String? loginResult = await _authService
                                .logarUsuarios(email: email, senha: senha, manterConectado: continuarLogado);

                            if (loginResult == null) {
                              // O login foi bem-sucedido, navegue para a tela do mapa.
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const LoadingScreen(),
                                ),
                              );
                            } else {
                              showSnackbar(
                                  context: context, texto: loginResult);
                            }
                          },
                          child: const Text("Entrar")),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text("Não possuí uma conta? ", style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Cadastro()));
                            },
                            child: Text(
                              "Cadastre-se",
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
              )
            ],
          ),
        )));
  }
}
