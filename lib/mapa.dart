import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


void main() {

  runApp(const Mapa());
}

class Mapa extends StatelessWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter', home: MyHomePage(), debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  late GoogleMapController mapController; //MAPA
  double lat = -22.2938535;
  double long = -122.677433;

   void _onMapCreated(GoogleMapController controller) {
    mapController = controller;}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(), // Substitua pela decoração desejada
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
          // ignore: avoid_unnecessary_containers
          Container( child:
            GoogleMap(
          onMapCreated: _onMapCreated,
         initialCameraPosition: CameraPosition(
           target: LatLng(lat, long),
           zoom: 11.0
         ),
        )
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
                        icon: const Icon(
                          Icons.location_on,
                          color: Colors.blue, // Substitua pela cor desejada
                          size: 30,
                        ),
                        onPressed: () => {},
                      ),
                     const  Text(
                        "Navegar",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue, // Substitua pela cor desejada
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
