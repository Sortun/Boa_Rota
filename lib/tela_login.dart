import 'package:find_transportes/tela_cadastro.dart';
import 'package:find_transportes/tela_inicial.dart';
import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';

TextEditingController txtNome = TextEditingController();
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
  bool Senhavisivel = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FundoApp,
      body: Stack(
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
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: Image.asset(
                      "assets/logoteste.png"), //add logo neste path (mudar na linha 57 da punspec.yaml)
                ),
                Text(
                  'Nome do App', //Mudar o texto
                  style: TituloInicial,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text("A informação que você precisa para o seu dia a dia.",
                    style: SubtituloInicial, textAlign: TextAlign.center),
                const SizedBox(height: 30),
                const Text("Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 123, 122, 122),
                        fontSize: 18),
                    textAlign: TextAlign.center),
                const SizedBox(height: 10),
                TextField(
                    controller: txtNome,
                    cursorColor: const Color.fromARGB(234, 118, 238, 188),
                    keyboardType: TextInputType.text,
                    maxLength: 30,
                    decoration:
                        TextfildCadastro.copyWith(labelText: "Usuário")),
                TextFormField(
                    controller: txtSenha,
                    maxLength: 10,
                    keyboardType: TextInputType.text,
                    obscureText: Senhavisivel,
                    cursorColor: const Color.fromARGB(234, 118, 238, 188),
                    decoration: TextfildCadastro.copyWith(
                      labelText: "Senha",
                      suffixIcon: GestureDetector(
                        child: Icon(Senhavisivel == true ? Icons.visibility_off : Icons.visibility, color: Colors.grey,),
                        onTap: () {
                          setState(() {
                            Senhavisivel = !Senhavisivel;
                            
                          });
                        },
                      ),
                    )),
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
                    style: TextStyle(fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {
                      //DEFINIR PAT DA TELA DE TERMOS E CONDIÇÕES
                      // Navigator.of(context).push(MaterialPageRoute(
                      // builder: (context) => const Temos()));
                    },
                    child: const Text(
                      "",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  )
                ]),
                const SizedBox(height: 30),
                ElevatedButton(
                    style: BotaoInicial,
                    onPressed: () {},
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
    );
  }
}