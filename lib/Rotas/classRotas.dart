import 'package:find_transportes/Content/rotaOlimpia.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:find_transportes/Content/rotaSani.dart';
import 'package:find_transportes/Content/rotaRodrigues.dart';

class Rota {
  final String linha;
  final String caminho;
  final String numeroLinha;
  final List<LatLng> coordenadas;
  final List<String> horariosDiasUteis;
  final List<String> sabados;
  final List<String> domingosFeriados;
  final Set<Marker> markers; 
  bool isFavorite;

  Rota(
      {required this.linha,
      required this.caminho,
      required this.numeroLinha,
      required this.coordenadas,
      required this.markers, 

      required this.horariosDiasUteis,
      required this.sabados,
      required this.domingosFeriados,
      this.isFavorite = false});
  Rota copy() {
    return Rota(
      numeroLinha: numeroLinha,
      linha: linha,
      caminho: caminho,
      coordenadas: List.from(coordenadas),
      horariosDiasUteis: List.from(horariosDiasUteis),
      sabados: List.from(sabados),
      domingosFeriados: List.from(domingosFeriados),
    markers: Set.from(markers),

      isFavorite: isFavorite,
    );
  }
}

List<Rota> rotas = [
  Rota(
      linha: 'Rodrigues Branco',
      caminho: 'Via: Fundação Cilas Bauab',
      numeroLinha: '25',
      coordenadas: coordenadasRodrigues,
      markers: markersCilas,
      horariosDiasUteis: [
        '''Rodrigues Branco > TERMINAL
05:30 / 06:00 / 06:30 / 07:00
07:30 / 08:00 / 08:30 / 09:00
09:30 / 10:00 / 10:30 / 11:00
11:30 / 12:00 / 12:30 / 13:00
13:30 / 14:00 / 14:30 / 15:00
15:30 / 16:00 / 16:30 / 17:00
17:30 / 18:00 / 18:30 / 19:30
20:30 / 21:30 / 22:30

TERMINAL > Rodrigues Branco
06:00 / 06:30 / 07:00 / 07:30
08:00 / 08:30 / 09:00 / 09:30
10:00 / 10:30 / 11:00 / 11:30
12:00 / 12:30 / 13:00 / 13:30
14:00 / 14:30 / 15:00 / 15:30
16:00 / 16:30 / 17:00 / 17:30
18:00 / 18:30 / 19:00 / 20:00
21:00 / 22:00 / 23:00'''
      ],
      sabados: [
        '''RODRIGUES BRANCO > TERMINAL
05:30 / 06:00 / 06:30 / 07:00
07:30 / 08:00 / 08:30 / 09:00
09:30 / 10:00 / 10:30 / 11:00
11:30 / 12:00 / 12:30 / 13:00
13:30 / 14:00 / 14:30 / 15:00
15:30 / 16:00 / 16:30 / 17:00
17:30 / 18:00 / 18:30 / 19:30
20:30 / 21:30

TERMINAL > RODRIGUES BRANCO
06:00 / 06:30 / 07:00 / 07:30
08:00 / 08:30 / 09:00 / 09:30
10:00 / 10:30 / 11:00 / 11:30
12:00 / 12:30 / 13:00 / 13:30
14:00 / 14:30 / 15:00 / 15:30
16:00 / 16:30 / 17:00 / 17:30
18:00 / 18:30 / 19:00 / 20:00
21:00 / 22:00 / 22:45
'''
      ],
      domingosFeriados: [
        '''RODRIGUES BRANCO > TERMINAL
05:30 / 06:30 / 07:30 / 08:30
09:30 / 10:30 / 11:30 / 12:30
13:30 / 14:30 / 15:30 / 16:30
17:30 / 18:30 / 19:30 / 20:30
21:30

TERMINAL > RODRIGUES BRANCO
06:00 / 07:00 / 08:00 / 09:00
10:00 / 11:00 / 12:00 / 13:00
14:00 / 15:00 / 16:00 / 17:00
18:00 / 19:00 / 20:00 / 21:00
22:00 / 22:45'''
      ]),
  Rota(
      linha: 'JD. Padre Augusto Sani',
      caminho: 'Via: Nova Jahu',
      numeroLinha: '28',
      markers: markersSani,
      coordenadas: coordenadasSani,
      horariosDiasUteis: [
        '''PE. AUGUSTO SANI > TERMINAL
05:30 / 06:00 / 06:30 / 07:00
07:30 / 08:00 / 08:30 / 09:00
09:30 / 10:00 / 10:30 / 11:00
11:30 / 12:00 / 12:30 / 13:00
13:30 / 14:00 / 14:30 / 15:00 
15:30 / 16:00 / 16:30 / 17:00
17:30 / 18:00 / 18:30 / 19:00 
19:30 / 20:00 / 20:30 / 21:00
21:30 / 22:00 / 22:30

TERMINAL > PE. AUGUSTO SANI
05:45 / 06:15 / 06:45 / 07:15
07:45 / 08:15 / 08:45 / 09:15 
09:45 / 10:15 / 10:45 / 11:15
11:45 / 12:15 / 12:45 / 13:15 
13:45 / 14:15 / 14:45 / 15:15 
15:45 / 16:15 / 16:45 / 17:15 
17:45 / 18:15 / 18:45 / 19:15
19:45 / 20:15 / 20:45 / 21:15
21:45 / 22:15 / 23:00'''
      ],
      sabados: [
        '''PE. AUGUSTO SANI > TERMINAL
05:30 / 06:00 / 06:30 / 07:00 
07:30 / 08:00 / 08:30 / 09:00
09:30 / 10:00 / 10:30 / 11:00
11:30 / 12:00 / 12:30 / 13:00
13:30 / 14:00 / 14:30 / 15:00
15:30 / 16:00 / 16:30 / 17:00
17:30 / 18:00 / 18:30 / 19:00
19:30 / 20:00 / 20:30 / 21:00
21:30 / 22:00 / 22:30

TERMINAL > PE. AUGUSTO SANI
05:45 / 06:15 / 06:45 / 07:15
07:45 / 08:15 / 08:45 / 09:15
09:45 / 10:15 / 10:45 / 11:15
11:45 / 12:15 / 12:45 / 13:15
13:45 / 14:15 / 14:45 / 15:15
15:45 / 16:15 / 16:45 / 17:15
17:45 / 18:15 / 18:45 / 19:15
19:45 / 20:15 / 20:45 / 21:15
21:45 / 22:15 / 22:45'''
      ],
      domingosFeriados: [
        '''PE. AUGUSTO SANI > TERMINAL
05:25 / 06:00 / 06:30 / 07:00
07:30 / 08:00 / 08:30 / 09:00 
09:30 / 10:00 / 10:30 / 11:00 
11:30 / 12:00 / 12:30 / 13:00
13:30 / 14:00 / 14:30 / 15:00 
15:30 / 16:00 / 16:30 / 17:00
17:30 / 18:00 / 18:30 / 19:00
19:30 / 20:00 / 20:30 / 21:00 
21:30 / 22:00 / 22:30

TERMINAL > PE. AUGUSTO SANI
05:45 / 06:15 / 06:45 / 07:15
07:45 / 08:15 / 08:45 / 09:15
09:45 / 10:15 / 10:45 / 11:15
11:45 / 12:15 / 12:45 / 13:15
13:45 / 14:15 / 14:45 / 15:15
15:45 / 16:15 / 16:45 / 17:15
17:45 / 18:15 / 18:45 / 19:15
19:45 / 20:15 / 20:45 / 21:15
21:45 / 22:15 / 22:45'''
      ]),
  Rota(
      linha: 'Jardim Olimpia',
      caminho: 'Via: Vila Maria',
      numeroLinha: '30',
      markers: markersOlimpia,
      coordenadas: coordenadasOlimpia,
      horariosDiasUteis: [
        '''OLÍMPIA > TERMINAL
05:30 / 06:00 / 06:30 / 07:00
07:30 / 08:00 / 08:30 / 09:00
09:30 / 10:00 / 10:30 / 11:00
11:30 / 12:00 / 12:30 / 13:00
13:30 / 14:00 / 14:30 / 15:00
15:30 / 16:00 / 16:30 / 17:00
17:30 / 18:00 / 18:30 / 19:00
19:30 / 20:00 / 20:30 / 21:00
21:30 / 22:00 / 22:30

TERMINAL > OLÍMPIA
05:40 / 06:10 / 06:40 / 07:10
07:40 / 08:10 / 08:35 / 09:10
09:35 / 10:10 / 10:35 / 11:10
11:35 / 12:10 / 12:35 / 13:10
13:35 / 14:10 / 14:35 / 15:10
15:35 / 16:10 / 16:35 / 17:10
17:35 / 18:10 / 18:35 / 19:10
19:35 / 20:10 / 20:35 / 21:10
21:35 / 22:10 / 23:00'''
      ],
      sabados: [
        '''OLÍMPIA > TERMINAL
05:30 / 06:00 / 06:30 / 07:00
07:30 / 08:00 / 08:30 / 09:00
09:30 / 10:00 / 10:30 / 11:00
11:30 / 12:00 / 12:30 / 13:00
13:30 / 14:00 / 14:30 / 15:00
15:30 / 16:00 / 16:30 / 17:00
17:30 / 18:00 / 18:30 / 19:00
19:30 / 20:00 / 20:30 / 21:00
21:30 / 22:00 / 22:30

TERMINAL > OLÍMPIA
06:10 / 06:40 / 07:10 / 07:40
08:10 / 08:35 / 09:10 / 09:35
10:10 / 10:35 / 11:10 / 11:35
12:10 / 12:35 / 13:10 / 13:35
14:10 / 14:35 / 15:10 / 15:35
16:10 / 16:35 / 17:10 / 17:35
18:10 / 18:35 / 19:10 / 19:35
20:10 / 20:40 / 21:10 / 21:40
22:10 / 22:45'''
      ],
      domingosFeriados: [
        '''OLIMPIA > TERMINAL
05:30 / 06:30 / 07:30 / 08:30
09:30 / 10:30 / 11:30 / 12:30
13:30 / 14:30 / 15:30 / 16:30
17:30 / 18:30 / 19:30 / 20:30
21:30 / 22:30 

TERMINAL > OLIMPIA
06:10 / 07:10 / 08:10 / 09:10
10:10 / 11:10 / 12:10 / 13:10
14:10 / 15:10 / 16:10 / 17:10
18:10 / 19:10 / 20:10 / 21:10
22:10 / 22:45'''
      ]),
];
