import 'package:google_maps_flutter/google_maps_flutter.dart';


class MarkerService {
  
  // Pin local atual
    Set<Marker> markers = {};
    void addMarker(Marker marker) {
    markers.add(marker); // Adicione o marcador ao conjunto
  }
  Set<Marker> getMarkers() {

    markers.add(
      const Marker(
        markerId: MarkerId("1"), //mudar
        position: LatLng(-22.29733947263162, -48.56584768742323),
        infoWindow: InfoWindow(
            title: 'Rodoviaria',
            snippet: "dfasdfkadfioahsdfashdfjaghsdfkljdsf"),
      ),
    );
   

    return markers;
  }
}


  
              