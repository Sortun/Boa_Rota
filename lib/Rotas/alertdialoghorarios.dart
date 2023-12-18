import 'package:find_transportes/Core/widget.dart';
import 'package:flutter/material.dart';

class HorarioAlertDialog extends StatelessWidget {
  final List<String> uteis;
  final List<String> sabados;
  final List<String> domingosFeriados;
  const HorarioAlertDialog(
      {super.key, required this.uteis,
      required this.sabados,
      required this.domingosFeriados});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: AlertDialog(
        title: const Text('Itinerários', textAlign: TextAlign.center,),
        content: SizedBox(
          width: 300, // Defina o tamanho desejado
          height: 500,
          child: Column(
            children: <Widget>[
               TabBar(
            overlayColor: const MaterialStatePropertyAll(Colors.transparent),
            labelColor: defaultColor,
            labelStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black38,
            indicatorColor: defaultColor,
            mouseCursor: MaterialStateMouseCursor.clickable,
                tabs: const [
                  Tab(text: 'Dias Úteis'),
                  Tab(text: 'Sabados'),
                  Tab(
                    text: 'D/F',
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        children: uteis
                            .map((horario) => ListTile(
                                  title: Text('''Dias da Úteis:
$horario'''),
                                ))
                            .toList(),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        children: sabados
                            .map((horario) => ListTile(
                                  title: Text('''Sabados:
$horario'''),
                                ))
                            .toList(),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        children: domingosFeriados
                            .map((horario) => ListTile(
                                  title: Text('''Domingos e Feriados: 
$horario'''),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Fechar o AlertDialog
                    },
                    child: Text('OK', style: TextStyle(color: defaultColor, fontSize: 20),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
