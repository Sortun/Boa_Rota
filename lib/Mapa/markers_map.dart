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
        position: LatLng(-22.297455179659753, -48.56061704456806),
        infoWindow: InfoWindow(
            title: 'Rodoviaria',
            snippet: "Todos os Ônibos desembarcam aqui"),
      ),
    );

    return markers;
  }
}
