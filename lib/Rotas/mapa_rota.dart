import 'package:find_transportes/Core/widget.dart';
import 'package:find_transportes/Mapa/permissions.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaRota extends StatefulWidget {
  final List<LatLng> coordenadas;
  final String linha;
    final Set<Marker> markers; 

  const MapaRota(
      {Key? key,
      required this.coordenadas,
      required this.linha,
         required this.markers, 
})
      : super(key: key);

  @override
  State<MapaRota> createState() => _MapaRotaState();
}

class _MapaRotaState extends State<MapaRota> {
  GoogleMapController? mapController;

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

    Set<Polyline> polylines = {
      Polyline(
        polylineId: const PolylineId('rota'),
        color: const Color.fromARGB(169, 102, 227, 175),
        points: widget.coordenadas,
        width: 6,
      ),
    };

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: widget.coordenadas.first,
              zoom: 17.5,
            ),
            compassEnabled: false,
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            markers: widget.markers,
            polylines: polylines,
          ),
          Positioned(
              bottom: 110,
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
                      Text(
                        widget.linha,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Container(
                          decoration: const BoxDecoration(
                            color: Colors.white60,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
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
