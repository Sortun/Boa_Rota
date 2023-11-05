// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:find_transportes/Mapa/permissions.dart';
import 'package:find_transportes/horarios.dart';
import 'package:find_transportes/Ajustes/settings.dart';
import 'package:flutter/material.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:find_transportes/Mapa/markers_map.dart';

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
  GoogleMapController? mapController;
  Position? _currentPosition;

  //localização padrão da cidade
  final LatLng defaultLocalInitialized =
      const LatLng(-22.298303591536, -48.56007993221);

  //Markers
  final MarkerService _markerService = MarkerService();

  Future<void> _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _updateCameraLocation();
  }

  void _updateCameraLocation() async {
    try {
      Position position = await determinePosition();
      print("Posição atual: ${position.latitude}, ${position.longitude}");
      setState(() {
        _currentPosition = position;
      });
      _updateCameraPosition(position.latitude, position.longitude);
    } catch (e) {
      print("Erro ao coletar a posição atual: $e");
    }
  }

  void _updateCameraPosition(double lat, double long) {
    if (mapController != null) {
      mapController!.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(lat, long), zoom: 17.5)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
              //Marcadores:
              onMapCreated: _onMapCreated,
              markers: _markerService.getMarkers(),
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  _currentPosition?.latitude ??
                      defaultLocalInitialized.latitude,
                  _currentPosition?.longitude ??
                      defaultLocalInitialized.longitude,
                ),
                zoom: 17.5,
              ),
              // disabilita o icone de bulsola que é gerado automaticamente pelo Mapa
              compassEnabled: false,
              // disabilita o icone de zoom que é gerado automaticamente pelo Mapa
              zoomControlsEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
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
              child: TextFormField(
                cursorColor: betaColor,
                decoration: CampoBusca.copyWith(
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.clear), onPressed: () {}),
                ),
              )),
          Positioned(
              bottom: 100,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  _updateCameraLocation();
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
              onTap: (index) {
                if (index == 1) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Horarios()));
                } else if (index == 2) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
                }
              }),
        ],
      ),
    );
  }
}
/*await AuthService().deslogar();
   Após o logout, navega para a tela de login (ou qualquer tela apropriada)
   Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
      );*/
