import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Mapa());
}

class Mapa extends StatelessWidget {
  const Mapa({Key? key}) : super(key: key);

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
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(children: [
            Expanded(
              child: TextFormField(decoration: CampoBusca),
            ),
            IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ),
                onPressed: () => {})
          ]),
        ),
        Container(

            // add mapa
            ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(141, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.location_on,
                          color: Corpadrao,
                          size: 30,
                        ),
                        onPressed: () => {},
                      ),
                      Text("Navegar",
                          style: TextStyle(
                            fontSize: 15,
                            color: Corpadrao,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.near_me, color: Colors.grey, size: 30),
                        onPressed: () => {},
                      ),
                      const Text("Viajar",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
