import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerService {
  // Pin local atual
  Set<Marker> markers = {};

  void addMarker({
    required String markerId,
    required LatLng position,
    required iconPath,
    required String title,
    required String snippet,
  }) async {
    final BitmapDescriptor icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(29.16, 50.00)), iconPath);

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
//////sani
    addMarker(
      markerId: "1",
      position: const LatLng(-22.297382135556873, -48.56346343533087),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "2",
      position: const LatLng(-22.298396919073898, -48.565076752266016),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "3",
      position: const LatLng(-22.29968288688289, -48.56711682600845),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "4",
      position: const LatLng(-22.30121895411719, -48.5695722194757),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "5",
      position: const LatLng(-22.30319619084458, -48.572723835220536),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "6",
      position: const LatLng(-22.30588183033638, -48.573301792495435),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "7",
      position: const LatLng(-22.308792155660285, -48.574017291209515),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "8",
      position: const LatLng(-22.31058420909087, -48.576315570376416),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "9",
      position: const LatLng(-22.308661655105766, -48.578137624124636),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "10",
      position: const LatLng(-22.309545866893032, -48.581073243487175),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "11",
      position: const LatLng(-22.310422794697615, -48.58142671157979),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "12",
      position: const LatLng(-22.311075285926638, -48.58338946368995),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "13",
      position: const LatLng(-22.31161034795134, -48.58562849137143),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "14",
      position: const LatLng(-22.309751722358225, -48.58706996218051),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "15",
      position: const LatLng(-22.311532799465787, -48.59022219230839),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "16",
      position: const LatLng(-22.313451875301542, -48.58864450073876),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "17",
      position: const LatLng(-22.314630894787406, -48.58770152831901),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "18",
      position: const LatLng(-22.31646781205072, -48.58622652294703),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "19",
      position: const LatLng(-22.317940540683594, -48.585035475308494),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'A caminho do Sani',
    );
    addMarker(
      markerId: "20",
      position: const LatLng(-22.314317658157062, -48.5795874036809),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "21",
      position: const LatLng(-22.312708428519855, -48.5776569101314),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "22",
      position: const LatLng(-22.311345025067617, -48.57614494743092),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "23",
      position: const LatLng(-22.30862084116808, -48.57381602930066),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "24",
      position: const LatLng(-22.30694738920885, -48.5734224406326),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "25",
      position: const LatLng(-22.303267965387075, -48.57260436229701),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "26",
      position: const LatLng(-22.301700717251318, -48.570165885981616),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "27",
      position: const LatLng(-22.30067678314883, -48.56690311843432),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "28",
      position: const LatLng(-22.29917585173039, -48.564521398155414),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
    addMarker(
      markerId: "29",
      position: const LatLng(-22.298030895118846, -48.56271419857389),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota - Sani',
      snippet: 'Em direção ao terminal',
    );
////////////////////////////////////////////////////////////////////////////////////////////////
    // Olimpia
    addMarker(
      markerId: "30",
      position: const LatLng(-22.294704133328764, -48.55870651000345),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "31",
      position: const LatLng(-22.29361782351005, -48.55952057994874),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 31 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "32",
      position: const LatLng(-22.292139899872883, -48.56061692173044),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 32 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "33",
      position: const LatLng(-22.28815837483513, -48.56148443052768),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "34",
      position: const LatLng(-22.284061527101866, -48.562862670376965),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "35",
      position: const LatLng(-22.28380407905639, -48.55997715917635),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "36",
      position: const LatLng(-22.282715607360576, -48.55783934324209),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "37",
      position: const LatLng(-22.280120779652847, -48.55554755986694),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "38",
      position: const LatLng(-22.281529957788397, -48.55330936771174),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "39",
      position: const LatLng(-22.28075628572153, -48.5521225713972),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "40",
      position: const LatLng(-22.279419255661974, -48.552260311947926),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "41",
      position: const LatLng(-22.276799377795054, -48.553422051897826),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "42",
      position: const LatLng(-22.274469249575326, -48.55436124490083),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "43",
      position: const LatLng(-22.27295007432465, -48.55286513791951),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "44",
      position: const LatLng(-22.271357048533574, -48.55047910604649),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "45",
      position: const LatLng(-22.26913143050767, -48.55156477682586),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "46",
      position: const LatLng(-22.265170990529366, -48.55074691924313),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "47",
      position: const LatLng(-22.264048963790092, -48.55016928598608),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "48",
      position: const LatLng(-22.26204270774875, -48.549086284242534),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "49",
      position: const LatLng(-22.259739653528353, -48.54862425398389),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Jd. Olimpia',
    );
    addMarker(
      markerId: "50",
      position: const LatLng(-22.260462886854768, -48.54992318829576),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "51",
      position: const LatLng(-22.261498977724795, -48.5488316438807),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "52",
      position: const LatLng(-22.263974998077327, -48.550158029603935),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "53",
      position: const LatLng(-22.267911298326652, -48.552664397423165),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "54",
      position: const LatLng(-22.26969824644865, -48.55323690042123),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "55",
      position: const LatLng(-22.27212544636708, -48.55563230136288),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "56",
      position: const LatLng(-22.276799883689286, -48.55357312983974),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "57",
      position: const LatLng(-22.27884877630433, -48.552644005537985),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "58",
      position: const LatLng(-22.281946220279476, -48.55089099800191),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "59",
      position: const LatLng(-22.28415649327115, -48.55209483429974),
      iconPath: 'assets/iconPinClaro1.png',
      title: '''Rota 30 - Olimpia
Rota 25 - Cilas''',
      snippet: 'A caminho do Terminal',
//Rota se repete varias vezes em outras rotas
    );
    addMarker(
      markerId: "60",
      position: const LatLng(-22.285685640336645, -48.55395670629492),
      iconPath: 'assets/iconPinClaro1.png',
      title: '''Rota 30 - Olimpia
Rota 25 - Cilas''',
      snippet:
          'A caminho do Terminal', //Rota se repete varias vezes em outras rotas
    );
    addMarker(
      markerId: "61",
      position: const LatLng(-22.286305816487793, -48.55560674644311),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "62",
      position: const LatLng(-22.285002630609654, -48.557348874257045),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "63",
      position: const LatLng(-22.284064391309933, -48.558561598346856),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "64",
      position: const LatLng(-22.281401580325312, -48.562295204056554),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "65",
      position: const LatLng(-22.282646254569887, -48.56306801880115),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "66",
      position: const LatLng(-22.28436883468652, -48.56290619201296),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "67",
      position: const LatLng(-22.28794345970609, -48.56170972947692),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "68",
      position: const LatLng(-22.29163144651081, -48.56193398973927),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 30 - Olimpia',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "69",
      position: const LatLng(-22.295271620546757, -48.56014783110012),
      iconPath: 'assets/iconPinClaro1.png',
      title: '''Rota 30 - Olimpia
Rota 25 - Cilas''',
      snippet: 'A caminho do Terminal',
    );
    //////////////////Cilas
    addMarker(
      markerId: "70",
      position: const LatLng(-22.295029567987104, -48.557882396599766),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "71",
      position: const LatLng(-22.29315672830388, -48.554857753678306),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "72",
      position: const LatLng(-22.29100926215991, -48.55141173726246),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "73",
      position: const LatLng(-22.289017813715827, -48.55199773079045),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "74",
      position: const LatLng(-22.287348342931487, -48.55317221277547),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "75",
      position: const LatLng(-22.285595585275747, -48.55356764327066),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "76",
      position: const LatLng(-22.28446457206849, -48.55214925514251),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "77",
      position: const LatLng(-22.282047652246824, -48.54779300493006),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "78",
      position: const LatLng(-22.27992712528966, -48.54221379924113),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "79",
      position: const LatLng(-22.281075315355586, -48.54527942663509),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "80",
      position: const LatLng(-22.278885805827652, -48.539656327571436),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "81",
      position: const LatLng(-22.277851220446472, -48.537430472443596),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "82",
      position: const LatLng(-22.27727052215799, -48.53533235319302),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "83",
      position: const LatLng(-22.27572283272319, -48.534924563746515),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "84",
      position: const LatLng(-22.27358036011512, -48.53615264088443),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "85",
      position: const LatLng(-22.273059134753485, -48.53806146305284),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "86",
      position: const LatLng(-22.271673414957988, -48.539634747082474),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "87",
      position: const LatLng(-22.270555546823985, -48.537176948922784),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "88",
      position: const LatLng(-22.267449068362442, -48.53818771266643),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "89",
      position: const LatLng(-22.263376461869036, -48.53874168469773),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "90",
      position: const LatLng(-22.26173045977378, -48.54108901425362),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "91",
      position: const LatLng(-22.263061541163818, -48.542154159590396),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );

    addMarker(
      markerId: "92",
      position: const LatLng(-22.26385904980599, -48.54244705221103),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "93",
      position: const LatLng(-22.265323407499963, -48.54293430285982),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "94",
      position: const LatLng(-22.267013981730145, -48.544636030406274),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "95",
      position: const LatLng(-22.268041728847937, -48.54567117428883),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "96",
      position: const LatLng(-22.266381335373413, -48.54683741939515),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "97",
      position: const LatLng(-22.26266127381763, -48.54914309478575),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "98",
      position: const LatLng(-22.26204775098707, -48.55208651508352),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "99",
      position: const LatLng(-22.263895298349574, -48.55304821130336),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "100",
      position: const LatLng(-22.265507395874923, -48.5541057680489),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "101",
      position: const LatLng(-22.266522886905413, -48.55544849625874),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "102",
      position: const LatLng(-22.262781988943882, -48.55846676233489),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );
    addMarker(
      markerId: "103",
      position: const LatLng(-22.257861404753413, -48.557615873174576),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Cilas',
    );

    //voltaaa
    addMarker(
      markerId: "104",
      position: const LatLng(-22.262303261889222, -48.558665029673016),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "105",
      position: const LatLng(-22.26673273110295, -48.55560422043719),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "106",
      position: const LatLng(-22.265346086188778, -48.55381894199663),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "107",
      position: const LatLng(-22.262278243372545, -48.55214616977735),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "108",
      position: const LatLng(-22.262834285535977, -48.54928892096364),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "109",
      position: const LatLng(-22.266567779615478, -48.547040609597815),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "110",
      position: const LatLng(-22.268259154029952, -48.54557501806734),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "111",
      position: const LatLng(-22.26694890960731, -48.54421059025025),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "112",
      position: const LatLng(-22.26507048741647, -48.542565001228304),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "113",
      position: const LatLng(-22.261817603343577, -48.54111561404449),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "114",
      position: const LatLng(-22.265123978971186, -48.53823437426911),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "115",
      position: const LatLng(-22.267362869071203, -48.53772082356145),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );

    addMarker(
      markerId: "116",
      position: const LatLng(-22.27052716095899, -48.537278125118206),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "117",
      position: const LatLng(-22.271974435857995, -48.53830947440633),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "118",
      position: const LatLng(-22.273281358691786, -48.536176815725526),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "119",
      position: const LatLng(-22.27541058167852, -48.53486073099525),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "120",
      position: const LatLng(-22.278792535314675, -48.54000188656891),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "121",
      position: const LatLng(-22.279744451835864, -48.54232679958915),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "122",
      position: const LatLng(-22.281010802456084, -48.54565216846907),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "123",
      position: const LatLng(-22.28209677675422, -48.54855011510998),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "124",
      position: const LatLng(-22.28415649327115, -48.55209483429974),
      iconPath: 'assets/iconPinClaro1.png',
      title: '''Rota 25 - Cilas
Rota 30 - Olimpia''',
      snippet: 'A caminho do Terminal',
      //Rota se repete varias vezes em outras rotas
    );
    addMarker(
      markerId: "125",
      position: const LatLng(-22.285685640336645, -48.55395670629492),
      iconPath: 'assets/iconPinClaro1.png',
      title: '''Rota 30 - Cilas
Rota 30 - Olimpia''',
      snippet: 'A caminho do Terminal',
      //Rota se repete varias vezes em outras rotas
    );
    addMarker(
      markerId: "126",
      position: const LatLng(-22.288926311746433, -48.55409128257678),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );

    addMarker(
      markerId: "127",
      position: const LatLng(-22.290894870423212, -48.55308900530636),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );

    addMarker(
      markerId: "128",
      position: const LatLng(-22.29262318846586, -48.555865276876574),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "129",
      position: const LatLng(-22.293694895286208, -48.557569767970165),
      iconPath: 'assets/iconPinClaro1.png',
      title: 'Rota 25 - Cilas',
      snippet: 'A caminho do Terminal',
    );
    addMarker(
      markerId: "130",
      position: const LatLng(-22.295271620546757, -48.56014783110012),
      iconPath: 'assets/iconPinClaro1.png',
      title: '''Rota 25 - Cilas
Rota 30 - Olimpia''',
      snippet: 'A caminho do Terminal',
    );

    return markers;
  }
}
