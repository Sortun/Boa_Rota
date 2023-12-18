// ignore_for_file: avoid_print

import 'package:find_transportes/Rotas/rotas.dart';
import 'package:find_transportes/Core/permissions.dart';
//import 'package:find_transportes/Content/desenho_linha.dart';
import 'package:find_transportes/Content/markers.dart';
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
    _callMarkers();
    _updateCameraLocation();
  }

  void _callMarkers() async {
    await determinePosition();
    setState(() {});
  }

  void _updateCameraLocation() async {
    Position position = await determinePosition();
    setState(() {});
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
      Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                height: 70,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3, left: 20, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Text(
                        "Jaú - SP",
                        style: TextStyle(fontSize: 25),
                      ),
                      Container(
                          decoration: const BoxDecoration(
                            color: Colors.white60,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Horarios()));
                            },
                            child: Text(
                              "Voltar",
                              style: TextStyle(
                                  color: defaultColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
