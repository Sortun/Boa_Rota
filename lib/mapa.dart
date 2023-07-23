import 'package:find_transportes/widget.dart';
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
      body: 
        GoogleMap(
          onMapCreated: _onMapCreated,
         initialCameraPosition: CameraPosition(
           target: LatLng(lat, long),
           zoom: 11.0
         ),
        ));
  }
}
