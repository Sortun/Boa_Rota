import 'package:find_transportes/Ajustes/SobreNos/aboutUs.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:find_transportes/Firebase/authFunctions.dart';
import 'package:find_transportes/Rotas/listRotas.dart';
import 'package:find_transportes/Mapa/mapa.dart';
import 'package:find_transportes/tela_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
  String userEmail = '';
  String userName = '';

  @override
  void initState() {
    super.initState();
    getUserDetails();
  }

  Future<void> getUserDetails() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      setState(() {
        userEmail = user.email ?? '';
        userName = user.displayName ?? '';
      });
    }
  }

  List<String> settingsList = ['Sobre nós', 'Deslogar'];
  List<Icon> icons = [
    const Icon(Icons.help_sharp),
    const Icon(Icons.info_outline),
    const Icon(Icons.output)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: defaultColor,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
  children: [
    const Icon(
      Icons.account_circle_rounded,
      size: 110,
      color: Colors.white,
    ),
    const SizedBox(width: 10),
    Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start, 
        children: [
          const SizedBox(height: 5,),
          Text(
            'Olá, $userName'.toUpperCase(),
            style: const TextStyle(fontSize: 35, color: Colors.white),
          ),
          Text(
            ' $userEmail',
            style: const TextStyle(fontSize: 20, color: Color.fromARGB(226, 255, 255, 255),),
          ),
        ],
      ),
    ),
  ],
)
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: settingsList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                          onTap: () async {
                              if (index == 0) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const AboutUs())); //about
                            } else if (index == 1) {
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
            ),
          ],
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
