// ignore_for_file: avoid_print

import 'package:find_transportes/Rotas/listRotas.dart';
import 'package:find_transportes/Mapa/permissions.dart';
//import 'package:find_transportes/Content/desenho_linha.dart';
import 'package:find_transportes/Content/markers.dart';
import 'package:find_transportes/Ajustes/settings.dart';
import 'package:flutter/material.dart';
import 'package:find_transportes/Core/widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


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

  //localização da Rodoviaria
  final LatLng defaultLocalInitialized =
      const LatLng(-22.298303591536, -48.56007993221);

  //Markers
  final MarkerService _markerService = MarkerService();

  //Polylines
  //Set<Polyline> polylines = getPolylines();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _updateCameraLocation();
  }

  void _updateCameraLocation() async {
    Position position = await determinePosition();
    setState(() {
      _currentPosition = position;
    });
    _updateCameraPosition(position.latitude, position.longitude);
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
              onMapCreated: _onMapCreated,
              markers: _markerService.getMarkers(),
            //  polylines: polylines,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  _currentPosition?.latitude ??
                      defaultLocalInitialized.latitude,
                  _currentPosition?.longitude ??
                      defaultLocalInitialized.longitude,
                ),
                zoom: 17.5,
              ),
              compassEnabled: false,
              zoomControlsEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              onTap: (position) {
                print(position);
              }),
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
