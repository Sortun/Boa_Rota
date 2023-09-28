import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerService {
  // Pin local atual
  Set<Marker> markers = {};
  void addMarkerLocal(Marker marker) {
    markers.add(marker); // Adicione o marcador ao conjunto
  }

  void addMarker({
    required String markerId,
    required LatLng position,
    required BitmapDescriptor icon,
    required String title,
    required String snippet,
  }) {
    final marker = Marker(
      markerId: MarkerId(markerId),
      position: position,
      icon: icon,
      infoWindow: InfoWindow(
        title: title,
        snippet: snippet,
      )
    );
    markers.add(marker);
  }

  Set<Marker> getMarkers() {
    //SANI
    addMarker(
      markerId: "1",
      position: const LatLng(-22.297382135556873, -48.56346343533087),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 1 - sani',
      snippet: '',
    );
     addMarker(
      markerId: "2",
      position: const LatLng(-22.298396919073898, -48.565076752266016),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 2 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "3",
      position: const LatLng(-22.29968288688289, -48.56711682600845),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 3 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "4",
      position: const LatLng(-22.30121895411719, -48.5695722194757),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 4 - sani',
      snippet: '',
    );
     addMarker(
      markerId: "5",
      position: const LatLng(-22.30319619084458, -48.572723835220536),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 5 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "6",
      position: const LatLng(-22.30588183033638, -48.573301792495435),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 6 - sani',
      snippet: '',
    );
     addMarker(
      markerId: "7",
      position: const LatLng(-22.308792155660285, -48.574017291209515),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 7 - sani',
      snippet: '',
    );
     addMarker(
      markerId: "8",
      position: const LatLng(-22.31058420909087, -48.576315570376416),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 8 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "9",
      position: const LatLng(-22.308661655105766, -48.578137624124636),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 9 - sani',
      snippet: '',
    );
     addMarker(
      markerId: "10",
      position: const LatLng(-22.309545866893032, -48.581073243487175),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 10 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "11",
      position: const LatLng(-22.310422794697615, -48.58142671157979),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 11 - sani',
      snippet: '',
    );
     addMarker(
      markerId: "12",
      position: const LatLng(-22.311075285926638, -48.58338946368995),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 12 - sani',
      snippet: 'CONFIRMAR PONTO',
    );
    addMarker(
      markerId: "13",
      position: const LatLng(-22.31161034795134, -48.58562849137143),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 13 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "14",
      position: const LatLng(-22.309751722358225, -48.58706996218051),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 14 - sani',
      snippet: 'CONFIRMAR LOCAL',
    );
      addMarker(
      markerId: "15",
      position: const LatLng(-22.311532799465787, -48.59022219230839),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 15 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "16",
      position: const LatLng(-22.313451875301542, -48.58864450073876),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 16 - sani',
      snippet: '',
    );
 addMarker(
      markerId: "17",
      position: const LatLng(-22.314630894787406, -48.58770152831901),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 17 - sani',
      snippet: '',
    );
 addMarker(
      markerId: "18",
      position: const LatLng(-22.31646781205072, -48.58622652294703),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 18 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "19",
      position: const LatLng(-22.317940540683594, -48.585035475308494),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 19 - sani',
      snippet: '',
    );
     addMarker(
      markerId: "20",
      position: const LatLng(-22.314317658157062, -48.5795874036809),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 20 - sani',
      snippet: 'Em direção ao terminal',
    );
      addMarker(
      markerId: "21",
      position: const LatLng(-22.312708428519855, -48.5776569101314),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 21 - sani',
      snippet: 'Em direção ao terminal',
    );
      addMarker(
      markerId: "22",
      position: const LatLng(-22.311345025067617, -48.57614494743092),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 22 - sani',
      snippet: 'Em direção ao terminal',
    );
          addMarker(
      markerId: "23",
      position: const LatLng(-22.30862084116808, -48.57381602930066),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 23 - sani',
      snippet: 'Em direção ao terminal',
    );
      addMarker(
      markerId: "24",
      position: const LatLng(-22.30694738920885, -48.5734224406326),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 24 - sani',
      snippet: 'Em direção ao terminal',
    );
     addMarker(
      markerId: "25",
      position: const LatLng(-22.303267965387075, -48.57260436229701),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 25 - sani',
      snippet: 'Em direção ao terminal',
    );
     addMarker(
      markerId: "26",
      position: const LatLng(-22.301700717251318, -48.570165885981616),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 26 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "27",
      position: const LatLng(-22.30067678314883, -48.56690311843432),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 27 - sani',
      snippet: 'Em direção ao terminal',
    );
     addMarker(
      markerId: "28",
      position: const LatLng(-22.29917585173039, -48.564521398155414),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 28 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "29",
      position: const LatLng(-22.298030895118846, -48.56271419857389),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 29 - sani',
      snippet: 'Em direção ao terminal',
    );

      // NH
    addMarker(
      markerId: "30",
      position: const LatLng(-22.294704133328764, -48.55870651000345),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 30 - NH',
      snippet: '',
    );
    addMarker(
      markerId: "31",
      position: const LatLng(-22.29361782351005, -48.55952057994874),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 31 - NH',
      snippet: '',
    );
    addMarker(
      markerId: "32",
      position: const LatLng(-22.292139899872883, -48.56061692173044),
      icon: BitmapDescriptor.defaultMarker,
      title: 'Ponto 32 - NH',
      snippet: '',
    );

    
    return markers;
  }
}