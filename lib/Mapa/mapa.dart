import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:find_transportes/Mapa/markers_map.dart';

void main() {
  runApp(const Mapa());
}

class Mapa extends StatelessWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter', home: MyHomePage(), 
    debugShowCheckedModeBanner: false,);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    //MAPA
    late GoogleMapController mapController;

    final MarkerService _markerService = MarkerService(); 

    final LatLng _center = const LatLng(-22.298293975196824, -48.56007054448128);


   void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            //Marcadores:
            markers: _markerService.getMarkers(),
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 15.0,
            ),
            //toda vez que houver movimentações na tela os dados serão exibidos no console 
            onCameraMove: (data){
              print(data);
            },
            //toda vez que houver click na tela os dados serão exibidos no console 
            onTap: (position){
              print(position);
            }
          ),
      
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: CampoBusca
                  ),
                ),

                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),


          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
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
                      Text(
                        "Navegar",
                        style: TextStyle(
                          fontSize: 15,
                          color: Corpadrao,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.near_me,
                          color: Colors.grey,
                          size: 30,
                        ),
                        onPressed: () => {},
                      ),
                      const Text(
                        "Viajar",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
