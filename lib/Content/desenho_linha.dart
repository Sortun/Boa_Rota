import 'package:find_transportes/Core/widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Set<Polyline> getPolylines() {
  const List<LatLng> polylinesCoordinates = [];

  Polyline polyline = Polyline(
    polylineId: const PolylineId("Rota desenho"),
    color: defaultColor,
    width: 7,
    points: polylinesCoordinates,
  );

  return {polyline};
}
