import 'package:latlong2/latlong.dart';

class MapMarker{
  const MapMarker({
    required this.location,

  });

  final LatLng location;
}

final _locations = [
  LatLng (0, -0),
  LatLng (20.524076, -101.199094),
  LatLng (20.590984, -101.218791),
  LatLng (20.585849, -101.212288),
  LatLng (20.580260, -101.206665),
  LatLng (20.579645, -101.204699),
  LatLng (20.566461, -101.199176),
  LatLng (20.563087, -101.200850),
  LatLng (20.554428,-101.1990711),
  LatLng(20.562778, -101.197603),
  LatLng(20.568909, -101.195471),
  LatLng(20.5734235,-101.1981017),
  LatLng(20.578619, -101.200523),
  LatLng(20.579327, -101.202519),
  LatLng(20.5802032,-101.2056319),

];


final mapMaker = [
  MapMarker(
    location: _locations[0],
    ),
  MapMarker(
    location: _locations[1],
    ),
    MapMarker(
    location: _locations[2],
    ),
    MapMarker(
    location: _locations[3],
    ),
    MapMarker(
    location: _locations[4],
    ),
    MapMarker(
    location: _locations[5],
    ),
    MapMarker(
    location: _locations[6],
    ),
    MapMarker(
    location: _locations[7],
    ),
    MapMarker(
    location: _locations[8],
    ),
      MapMarker(
    location: _locations[9],
    ),
    MapMarker(
    location: _locations[10],
    ),
    MapMarker(
    location: _locations[11],
    ),
    MapMarker(
    location: _locations[12],
    ),
    MapMarker( 
    location: _locations[13],
    ),
    MapMarker(
    location: _locations[14],
    ),

    
];