import 'package:find_transportes/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:find_transportes/Map/markers_map.dart';
import 'package:find_transportes/Map/permissions.dart';
import 'package:geolocator/geolocator.dart';


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

   void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

    final MarkerService _markerService = MarkerService(); 
     final LatLng _center = const LatLng(-22.298293975196824, -48.56007054448128);
  
@override
  void initState() {
  super.initState();
  _getCurrentLocation();
}
 //geolocator
Position _currentPosition = Position(
 latitude: 0,
  longitude: 0,
   accuracy: 0, 
  timestamp: DateTime.now(),
 altitude: 0, 
heading:0 , 
speed: 0, 
speedAccuracy: 0
);




 void _getCurrentLocation() async {
  try {
    Position position = await determinePosition(); // Chama a função da validação
    print("Current position: ${position.latitude}, ${position.longitude}");
    setState(() {
      _currentPosition = position;
    });

    if (mapController != null) {
      _addCurrentLocationMarker(
        _currentPosition.latitude,
        _currentPosition.longitude,
      );
    }
  } catch (e) {
    print("Error getting current location: $e");
  }
}

  void _addCurrentLocationMarker(double lat, double lng) {
    final currentMarker = Marker(
      markerId: MarkerId("currentLocation"),
      position: LatLng(lat, lng),
      infoWindow: InfoWindow(
        title: 'Minha Localização Atual',
      ),
    );

    setState(() {
      _markerService.addMarker(currentMarker);
    });
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
            // disabilita o icone de bulsola que é gerado automaticamente pelo Mapa
            compassEnabled: false,
            // disabilita o icone de zoom que é gerado automaticamente pelo Mapa
            zoomControlsEnabled: false,
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
