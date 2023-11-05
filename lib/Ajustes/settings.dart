// import 'dart:ffi';
// import 'package:find_transportes/Mapa/maps.dart';
import 'package:find_transportes/Ajustes/SobreNos/aboutUs.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:find_transportes/Firebase/authFunctions.dart';
import 'package:find_transportes/Mapa/mapa.dart';
import 'package:find_transportes/horarios.dart';
import 'package:find_transportes/tela_login.dart';
import 'package:flutter/material.dart';
/*import 'account.dart';
import 'shareApp.dart';
import 'contactUs.dart';
import 'SobreNos/aboutUs.dart';*/

void main() {
  runApp(const SettingsPage());
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> settingsList = [
    'Conta',
    'Compartilhar com Amigos',
    'Tema',
    'Nos Contate',
    'Sobre nós',
    'Deslogar'
  ];
  List<Icon> icons = [
    const Icon(Icons.account_circle_rounded),
    const Icon(Icons.ios_share_rounded),
    const Icon(Icons.nightlight),
    const Icon(Icons.help_sharp),
    const Icon(Icons.info_outline),
    const Icon(Icons.output)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: settingsList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    onTap: () async {
                      if (index == 0) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Horarios())); //Account
                      } else if (index == 1) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Horarios())); //ShareApp
                      } else if (index == 2) {
                        //index de mudar de tema
                      } else if (index == 3) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const Horarios())); //ContactUs
                      } else if (index == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AboutUs())); //about
                      } else if (index == 5) {
                        await AuthService().deslogar();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      }
                    },
                    title: Text(
                      settingsList[index],
                      style: const TextStyle(color: Colors.black54),
                    ),
                    leading: Icon(icons[index].icon, color: defaultColor),
                    contentPadding: const EdgeInsets.all(15)),
              );
            },
          ),
        ),
        CustomBottomNavigationBar(
            currentIndex: 2,
            onTap: (index) {
              if (index == 0) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Mapa()));
              } else if (index == 1) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Horarios()));
              }
            }),
      ],
    ));
  }
}
