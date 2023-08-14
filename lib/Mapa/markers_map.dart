 import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerService{
  Set<Marker> getMarkers(){
    Set<Marker> markers={};

    markers.add(const Marker(markerId: MarkerId("1"),//mudar
    position: LatLng(-22.29733947263162, -48.56584768742323),
    infoWindow: InfoWindow(
      title: 'Rodoviaria',
      snippet: "dfasdfkadfioahsdfashdfjaghsdfkljdsf"
      
    ),
    ),);

    return markers;
  }
}