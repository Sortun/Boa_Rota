// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:find_transportes/widget.dart';

//Sobre a tela: 
     //se pode dispensar o modal ao clicar fora do espaço ---- ver com natalia
     // barrierDismissible: false,

//Executar a tela de termos sem nescessariamente criar outro arquivo.dart, colocar os termos no prorpio contexto do alertdialog.

class CustomDialog{
static void show(BuildContext context){

showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context){
        bool aceitotermos = false;

    return AlertDialog(
            backgroundColor: FundoApp,
            elevation: 8,
            scrollable: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            title: const Text('Atenção'),
            content: StatefulBuilder(builder: (BuildContext context,
                void Function(void Function()) setState) {
              return SizedBox(
                width: 300,
                height: 139,
                child: Column(
                  children: [
                    Row(children: [
                      Checkbox(
                        value: aceitotermos,
                        onChanged: (bool? checked) {
                          setState(() {
                            aceitotermos = checked ?? false;
                          });
                        },
                        activeColor: Corpadrao,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0)),
                      ),
                      const SizedBox(width: 5),
                      const Text('Aceitar os Termos de Uso?',
                          style: TextStyle(fontSize: 16))
                    ]),
                    Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: GestureDetector(
                            onTap: () {
                              //DEFINIR PAT DA TELA DE TERMOS E CONDIÇÕES
                              // Navigator.of(context).push(MaterialPageRoute(
                              // builder: (context) => const Temos()));
                            },
                            child: const Text('Revisar Termos',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.blue)))),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        //Botão p/ cancelar
                        Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: ElevatedButton(
                                style: botaoPadrao,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancelar',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    textAlign: TextAlign.center))),

                        //Botão para aceitar termos e ir p/ proxima tela
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: ElevatedButton(
                              style: botaoPadrao,
                              onPressed: !aceitotermos
                                  ? null
                                  : () {
                                      //adicionar a pagina p/ ser direcionado depois dessa com o push
                                      Navigator.pop(context);
                                    },
                              child: const Text('Aceitar',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  textAlign: TextAlign.center)),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
            actions: const []);});

}}
