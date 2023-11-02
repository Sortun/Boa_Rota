import 'package:flutter/material.dart';
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
    required iconPath,
    required String title,
    required String snippet,
  }) async {
    final BitmapDescriptor icon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(35, 60)),
      iconPath);
 
    final marker = Marker(
        markerId: MarkerId(markerId),
        position: position,
        icon: icon,
        infoWindow: InfoWindow(
          title: title,
          snippet: snippet,
        ));
    markers.add(marker);
  }

  Set<Marker> getMarkers() {
    //SANI
    addMarker(
      markerId: "1",
      position: const LatLng(-22.297382135556873, -48.56346343533087),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 1 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "2",
      position: const LatLng(-22.298396919073898, -48.565076752266016),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 2 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "3",
      position: const LatLng(-22.29968288688289, -48.56711682600845),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 3 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "4",
      position: const LatLng(-22.30121895411719, -48.5695722194757),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 4 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "5",
      position: const LatLng(-22.30319619084458, -48.572723835220536),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 5 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "6",
      position: const LatLng(-22.30588183033638, -48.573301792495435),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 6 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "7",
      position: const LatLng(-22.308792155660285, -48.574017291209515),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 7 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "8",
      position: const LatLng(-22.31058420909087, -48.576315570376416),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 8 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "9",
      position: const LatLng(-22.308661655105766, -48.578137624124636),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 9 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "10",
      position: const LatLng(-22.309545866893032, -48.581073243487175),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 10 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "11",
      position: const LatLng(-22.310422794697615, -48.58142671157979),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 11 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "12",
      position: const LatLng(-22.311075285926638, -48.58338946368995),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 12 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "13",
      position: const LatLng(-22.31161034795134, -48.58562849137143),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 13 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "14",
      position: const LatLng(-22.309751722358225, -48.58706996218051),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 14 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "15",
      position: const LatLng(-22.311532799465787, -48.59022219230839),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 15 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "16",
      position: const LatLng(-22.313451875301542, -48.58864450073876),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 16 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "17",
      position: const LatLng(-22.314630894787406, -48.58770152831901),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 17 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "18",
      position: const LatLng(-22.31646781205072, -48.58622652294703),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 18 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "19",
      position: const LatLng(-22.317940540683594, -48.585035475308494),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 19 - sani',
      snippet: '',
    );
    addMarker(
      markerId: "20",
      position: const LatLng(-22.314317658157062, -48.5795874036809),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 20 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "21",
      position: const LatLng(-22.312708428519855, -48.5776569101314),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 21 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "22",
      position: const LatLng(-22.311345025067617, -48.57614494743092),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 22 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "23",
      position: const LatLng(-22.30862084116808, -48.57381602930066),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 23 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "24",
      position: const LatLng(-22.30694738920885, -48.5734224406326),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 24 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "25",
      position: const LatLng(-22.303267965387075, -48.57260436229701),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 25 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "26",
      position: const LatLng(-22.301700717251318, -48.570165885981616),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 26 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "27",
      position: const LatLng(-22.30067678314883, -48.56690311843432),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 27 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "28",
      position: const LatLng(-22.29917585173039, -48.564521398155414),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 28 - sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "29",
      position: const LatLng(-22.298030895118846, -48.56271419857389),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 29 - sani',
      snippet: 'Em direção ao terminal',
    );

    // OLIMPIA
    addMarker(
      markerId: "30",
      position: const LatLng(-22.294704133328764, -48.55870651000345),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - Olimpia',
      snippet: '',
    );
    addMarker(
      markerId: "31",
      position: const LatLng(-22.29361782351005, -48.55952057994874),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 31 - Olimpia',
      snippet: '',
    );
    addMarker(
      markerId: "32",
      position: const LatLng(-22.292139899872883, -48.56061692173044),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 32 - Olimpia',
      snippet: '',
    );

  //OLIMPIA FIREBASE
 addMarker(
      markerId: "33",
      position: const LatLng(-22.27212544636708, -48.55563230136288),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta',
    );
    addMarker(
      markerId: "34",
      position: const LatLng(-22.27884877630433, -48.552644005537985),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta',
    );
    addMarker(
      markerId: "35",
      position: const LatLng(-22.28794345970609, -48.56170972947692),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta',
    );
     addMarker(
      markerId: "36",
      position: const LatLng(-22.28815837483513, -48.56148443052768),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida',
    );
       addMarker(
      markerId: "37",
      position: const LatLng(-22.263974998077327, -48.550158029603935),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta',
    );
    addMarker(
      markerId: "38",
      position: const LatLng(-22.281529957788397, -48.55330936771174),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida',
    );
     addMarker(
      markerId: "39",
      position: const LatLng(-22.281401580325312, -48.562295204056554),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta',
    );
    addMarker(
      markerId: "40",
      position: const LatLng(-22.269712840758253, -48.55321832372865),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'n sei - confirmar',
    );
    addMarker(
      markerId: "41",
      position: const LatLng(-22.26969824644865, -48.55323690042123),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'n sei - confirmar',
    );
     addMarker(
      markerId: "42",
      position: const LatLng(-22.281385707054795, -48.562358995013206),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida',
    );
     addMarker(
      markerId: "43",
      position: const LatLng(-22.286305816487793, -48.55560674644311),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta',
    );
     addMarker(
      markerId: "44",
      position: const LatLng(-22.276799377795054, -48.553422051897826),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida',
    );
 addMarker(
      markerId: "45",
      position: const LatLng(-22.276799883689286, -48.55357312983974),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta',
    );
    addMarker(
      markerId: "46",
      position: const LatLng(-22.28415649327115, -48.55209483429974),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta', //ponto se repete varias vezes em outras rotas
    );
    addMarker(
      markerId: "47",
      position: const LatLng(-22.285685640336645, -48.55395670629492),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta', //ponto se repete varias vezes em outras rotas
    );
    addMarker(
      markerId: "48",
      position: const LatLng(-22.285002630609654, -48.557348874257045),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta', 
    );
    addMarker(
      markerId: "49",
      position: const LatLng(-22.284064391309933, -48.558561598346856),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta', 
    );
     addMarker(
      markerId: "50",
      position: const LatLng(-22.281946220279476, -48.55089099800191),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'volta', 
    );
    addMarker(
      markerId: "51",
      position: const LatLng(-22.273007532101936, -48.553017847078586),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida - CONFIRMAR', 
    );
    addMarker(
      markerId: "52",
      position: const LatLng(-22.264048963790092, -48.55016928598608),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida - CONFIRMAR', 
    );
    addMarker(
      markerId: "53",
      position: const LatLng(-22.268991364832722, -48.55143385110778),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida - CONFIRMAR', 
    );
    addMarker(
      markerId: "53",
      position: const LatLng(-22.282715607360576, -48.55783934324209),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida - CONFIRMAR', 
    );
     addMarker(
      markerId: "54",
      position: const LatLng(-22.274469249575326, -48.55436124490083),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida', 
    );
     addMarker(
      markerId: "55",
      position: const LatLng(-22.279419255661974, -48.552260311947926),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Ponto 30 - OLIMPIA',
      snippet: 'ida', 
    );
    return markers;
  }
}
