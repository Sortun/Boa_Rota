
import 'package:find_transportes/Content/rotaOlimpia.dart';
import 'package:find_transportes/Content/rotaRodrigues.dart';
import 'package:find_transportes/Content/rotaSani.dart';
import 'package:find_transportes/Rotas/classRotas.dart';
import 'package:find_transportes/Mapa/mapa.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:find_transportes/Ajustes/settings.dart';
import 'package:find_transportes/Rotas/mapa_rota.dart';
import 'package:find_transportes/Rotas/alertdialoghorarios.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


TextEditingController horarioController = TextEditingController();

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
  void toggleFavorite(int index) {
    setState(() {
      if (lista[index].isFavorite) {
        removeFromFavorites(lista[index]);
      } else {
        addToFavorites(lista[index]);
      }
      lista[index].isFavorite = !lista[index].isFavorite;
    });
  }

  void addToFavorites(Rota rota) {
    setState(() {
      rotasFavoritas.add(rota.copy());
    });
  }

  void removeFromFavorites(Rota rota) {
    setState(() {
      rotasFavoritas
          .removeWhere((favRota) => favRota.numeroLinha == rota.numeroLinha);
    });
  }

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
          backgroundColor: defaultColor,
          toolbarHeight: 0,
          bottom: TabBar(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            labelColor: Colors.white,
            labelStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black38,
            unselectedLabelStyle: const TextStyle(fontSize: 14),
            indicatorColor: defaultColor,
            mouseCursor: MaterialStateMouseCursor.clickable,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.map_outlined,
                  size: 25,
                ),
                text: "Rotas e Horários",
              ),
              Tab(
                icon: Icon(Icons.favorite_border, size: 25),
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
                  cursorColor: defaultColor,
                  decoration: CampoBusca.copyWith(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.clear,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            txtSearch.text = '';
                            search(txtSearch.text);
                          })),
                ),
              ),
              SingleChildScrollView(
                  child: Expanded(
                      child: SizedBox(
                          height: 360,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: ListView.builder(
                                  itemCount: lista.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Text(
                                          lista[index]
                                              .numeroLinha
                                              .substring(0, 2),
                                          style: TextStyle(
                                              color: defaultColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20.0),
                                        ),
                                      ),
                                      title: Text(lista[index].linha,
                                          style: const TextStyle(fontSize: 18)),
                                      subtitle: Text(lista[index].caminho),
                                      trailing: IconButton(
                                        icon: Icon(
                                          lista[index].isFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: defaultColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (lista[index].isFavorite) {
                                              rotasFavoritas
                                                  .remove(lista[index]);
                                            } else {
                                              rotasFavoritas.add(lista[index]);
                                            }
                                            lista[index].isFavorite =
                                                !lista[index].isFavorite;

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
                                                    leading:
                                                        const Icon(Icons.timer),
                                                    title:
                                                        const Text('Horarios'),
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                      _showHorarioAlertDialog(
                                                          context,
                                                          lista[index]);
                                                    },
                                                  ),
                                                  ListTile(
                                                    leading: const Icon(
                                                        Icons.directions),
                                                    title: const Text(
                                                        'Ver Rota no Mapa'),
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                      Set<Marker>
                                                          selectedMarkers = {};
                                                      if (lista[index].linha ==
                                                          'Rodrigues Branco') {
                                                        selectedMarkers =
                                                            markersCilas;
                                                      } else if (lista[index]
                                                              .linha ==
                                                          'JD. Padre Augusto Sani') {
                                                        selectedMarkers =
                                                            markersSani;
                                                      } else if (lista[index]
                                                              .linha ==
                                                          'Jardim Olimpia') {
                                                        selectedMarkers =
                                                            markersOlimpia;
                                                      }

                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              MapaRota(
                                                            coordenadas: lista[
                                                                    index]
                                                                .coordenadas,
                                                            linha: lista[index]
                                                                .linha,
                                                            markers:
                                                                selectedMarkers,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  )
                                                ],
                                              );
                                            });
                                      },
                                    ));
                                  })))))
            ]),
            SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: rotasFavoritas.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Text(
                                  rotasFavoritas[index]
                                      .numeroLinha
                                      .substring(0, 2),
                                  style: TextStyle(
                                    color: defaultColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              title: Text(rotasFavoritas[index].linha,
                                  style: const TextStyle(fontSize: 16)),
                              subtitle: Text(rotasFavoritas[index].caminho),
                              trailing: Icon(
                                Icons.favorite,
                                color: defaultColor,
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
                                            _showHorarioAlertDialog(
                                                context, rotasFavoritas[index]);
                                          },
                                        ),
                                        ListTile(
                                          leading: const Icon(Icons.directions),
                                          title: const Text('Ver Rota no Mapa'),
                                          onTap: () {
                                            Navigator.of(context).pop();

                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => MapaRota(
                                                  coordenadas:
                                                      rotasFavoritas[index]
                                                          .coordenadas,
                                                  linha: rotasFavoritas[index]
                                                      .linha,
                                                  markers: rotasFavoritas[index]
                                                      .markers,
                                                ),
                                              ),
                                            );
                                          },
                                        )
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ])))
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

void _showHorarioAlertDialog(BuildContext context, Rota rotaSelecionada) {
  List<String> uteis = rotaSelecionada.horariosDiasUteis;
  List<String> sabados = rotaSelecionada.sabados;
  List<String> domingosFeriados = rotaSelecionada.domingosFeriados;
  showDialog(
    context: context,
    builder: (context) {
      return HorarioAlertDialog(
          uteis: uteis, sabados: sabados, domingosFeriados: domingosFeriados);
    },
  );
}
