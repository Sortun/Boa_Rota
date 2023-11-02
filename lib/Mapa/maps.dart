// ignore_for_file: unnecessary_null_comparison, avoid_print
import 'package:find_transportes/Firebase/authFunctions.dart';
import 'package:find_transportes/horarios.dart';
import 'package:find_transportes/tela_login.dart';
import 'package:flutter/material.dart';
import 'package:find_transportes/widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:find_transportes/Mapa/markers_map.dart';
import 'package:find_transportes/Mapa/permissions.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //MAPA
  late GoogleMapController mapController;
  final MarkerService _markerService = MarkerService();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  //geolocator
  Position _currentPosition = Position(
      latitude: 0,
      longitude: 0,
      accuracy: 0,
      timestamp: DateTime.now(),
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0);

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  void _getCurrentLocation() async {
    try {
      Position position =
          await determinePosition(); // Chame a função da validação
      print("Posição atual: ${position.latitude}, ${position.longitude}");
      setState(() {
        _currentPosition = position;
      });
      _updateCameraPosition(position.latitude, position.longitude);
    } catch (e) {
      print("Erro ao coletar a posição atual: $e");
    }
  }

  void _updateCameraPosition(double lat, double lng) {
    if (mapController != null) {
      _addCurrentLocationMarker(
          _currentPosition.latitude, _currentPosition.longitude);
      mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 16.0),
      ));
    }
  }

  Future<void> _addCurrentLocationMarker(double lat, double lng) async {
    final localIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(35, 60)),
        'assets/iconPinEscuro1.png');
    final currentMarker = Marker(
        markerId: const MarkerId("localizacaoatual"),
        icon: localIcon,
        position: LatLng(lat, lng),
        infoWindow: const InfoWindow(title: 'Minha Localização Atual'));

    setState(() {
      _markerService.addMarkerLocal(currentMarker);
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
                target: LatLng(
                  _currentPosition.latitude,
                  _currentPosition.longitude,
                ),
                zoom: 20.0,
              ),
              // disabilita o icone de bulsola que é gerado automaticamente pelo Mapa
              compassEnabled: false,
              // disabilita o icone de zoom que é gerado automaticamente pelo Mapa
              zoomControlsEnabled: false,

              myLocationEnabled: true,
              //toda vez que houver movimentações na tela os dados serão exibidos no console
              onCameraMove: (data) {
                print(data);
              },
              //toda vez que houver click na tela os dados serão exibidos no console
              onTap: (position) {
                print(position);
              }),
          Padding(
              padding: const EdgeInsets.all(30),
              child: Expanded(
                child: TextFormField(
                  decoration: CampoBusca,
                  cursorColor: betaColor,
                ),
              )),
          Positioned(
              bottom: 100,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  return _updateCameraPosition(
                      _currentPosition.latitude, _currentPosition.longitude);
                },
                tooltip: "Localizar",
                backgroundColor: const Color.fromARGB(255, 244, 244, 244),
                shape: const CircleBorder(),
                child: Icon(
                  Icons.my_location_rounded,
                  color: defaultColor,
                  size: 30,
                ),
              )),
          CustomBottomNavigationBar(
              currentIndex: 0,
              onTap: (index) async {
                if (index == 1) {
                  //tipo: substitui a outra tela
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Horarios()));
                } else if (index == 2) {
 await AuthService().deslogar();
      // Após o logout, navega para a tela de login (ou qualquer tela apropriada)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );                }
              }),
        ],
      ),
    );
  }
}
