import 'package:find_transportes/Mapa/maps.dart';
import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Horarios());
}

class Horarios extends StatefulWidget {
  const Horarios({Key? key}) : super(key: key);

  @override
  State<Horarios> createState() => _HorariosState();
}

class _HorariosState extends State<Horarios> {
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            labelColor: defaultColor,
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: const TextStyle(fontSize: 14),
            indicatorColor: defaultColor,
            mouseCursor: MaterialStateMouseCursor.clickable,
            tabs: [
              Tab(
                icon: Icon(Icons.timer_sharp),
                text: "Horarios",
              ),
              Tab(
                icon: Icon(Icons.favorite_border),
                text: "Favoritos",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
                child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: Expanded(
                    child: TextField(
                      decoration: CampoBusca,
                      cursorColor: betaColor,
                    ),
                  )),
            ])),

            ///segunda tela
            SingleChildScrollView(
              child: Column(
                children: [
                  Text("Segunda tela"),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 70, // Altura fixa da barra de navegação inferior
          child: CustomBottomNavigationBar(
            currentIndex: 1,
            onTap: (index) {
              if (index == 0) {
                //tipo: substitui a outra tela
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Mapa(),
                  ),
                );
              } else if (index == 2) {
                // Faça algo para a terceira guia, se necessário
              }
            },
          ),
        ),
      ),
    );
  }
}
