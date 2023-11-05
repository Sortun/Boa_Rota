// ignore_for_file: avoid_print

import 'package:find_transportes/Mapa/mapa.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:find_transportes/Ajustes/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Horarios());
}

class Rota {
  final String linha;
  final String caminho;
  final String numeroLinha;
  bool isFavorite;

  Rota(
      {required this.linha,
      required this.caminho,
      required this.numeroLinha,
      this.isFavorite = false});
}

List<Rota> rotas = [
  Rota(linha: 'P. Augusto Sani', caminho: 'Via: Nova Jahu', numeroLinha: '28'),
  Rota(linha: 'Jardim Olimpia', caminho: 'Via: Vila Maria', numeroLinha: '30')
];

List<Rota> rotasFavoritas =
    []; //ao clicar no favorito a rota sera adicionada aqui

class Horarios extends StatelessWidget {
  const Horarios({Key? key}) : super(key: key);

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
  TextEditingController txtSearch = TextEditingController();
  List<Rota> lista = rotas;

  //Campo de pesquisa validação
  void search(String query) {
    if (query.isEmpty) {
      setState(() {
        lista = rotas;
      });
      return;
    }
    query = query.toLowerCase();
    List<Rota> consulta = [];
    for (var u in rotas) {
      var name = u.linha.toString().toLowerCase();
      if (name.contains(query)) {
        consulta.add(u);
      }
    }
    setState(() {
      lista = consulta;
    });
  }

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
            tabs: const [
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
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextFormField(
                  controller: txtSearch,
                  onChanged: search,
                  cursorColor: betaColor,
                  decoration: CampoBusca.copyWith(
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            txtSearch.text = '';
                            search(txtSearch.text);
                          })),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: lista.length,
                      itemBuilder: (context, index) {
                        return Card(
                            child: ListTile(
                          leading: CircleAvatar(
                            child:
                                Text(lista[index].numeroLinha.substring(0, 2)),
                          ),
                          title: Text(lista[index].linha),
                          subtitle: Text(lista[index].caminho),
                          trailing: IconButton(
                            icon: Icon(
                              lista[index].isFavorite
                                  ? Icons.favorite //verdadeiro
                                  : Icons.favorite_border, // falso é o default
                              color: betaColor,
                            ),
                            onPressed: () {
                              setState(() {
                                //validação favoritos
                                if (lista[index].isFavorite) {
                                  //se for igual a false remove ao array // precionado
                                  rotasFavoritas.remove(lista[index]);
                                } else {
                                  //se true add do array // n precionado
                                  rotasFavoritas.add(lista[index]);
                                }
                                //ao clicar ele muda o estado do bool la de cima
                                lista[index].isFavorite =
                                    !lista[index].isFavorite;

                                print(rotasFavoritas);
                              });
                            },
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ListTile(
                                        leading: const Icon(Icons.timer),
                                        title: const Text('Horarios'),
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      ListTile(
                                        leading:
                                            const Icon(Icons.route_outlined),
                                        title: const Text('Ver Rota no Mapa'),
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  );
                                });
                          },
                        ));
                      }))
            ]),

            ///segunda tela
            SingleChildScrollView(
                child: Column(children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: rotasFavoritas.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                      leading: CircleAvatar(
                          child: Text(rotasFavoritas[index]
                              .numeroLinha
                              .substring(0, 2))),
                      title: Text(rotasFavoritas[index].linha),
                      subtitle: Text(rotasFavoritas[index].caminho),
                      trailing: Icon(
                        Icons.favorite,
                        color: betaColor,
                      ),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons.timer),
                                    title: const Text('Horarios'),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.route_outlined),
                                    title: const Text('Ver Rota no Mapa'),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
                      },
                    ));
                  })
            ]))
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: CustomBottomNavigationBar(
            currentIndex: 1,
            onTap: (index) {
              if (index == 0) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Mapa(),
                  ),
                );
              } else if (index == 2) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
              }
            },
          ),
        ),
      ),
    );
  }
}
