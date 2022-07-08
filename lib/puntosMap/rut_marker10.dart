import 'package:latlong2/latlong.dart';

class MapMarker{
  const MapMarker({
    required this.location,

  });

  final LatLng location;
}

final _locations = [
  LatLng (0, -0),
  LatLng (20.570404, -101.221389),
  LatLng (20.576084, -101.215045),
  LatLng (20.573878, -101.209779),
  LatLng (20.573069, -101.207361),
  LatLng (20.569919, -101.197927),
  LatLng (20.566920, -101.198884),
  LatLng (20.543408, -101.204893),
  LatLng (20.563076, -101.200843),
  LatLng(20.550793, -101.203869),
  LatLng(20.543408, -101.204893),
  LatLng(20.551537, -101.203451),
  LatLng(20.5628162,-101.1974987),
  LatLng(20.5714773,-101.1992209),
  LatLng(20.5717965,-101.2003354),
  LatLng(20.574342, -101.210756),

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
    MapMarker(
      location: _locations[15],
      ),
    
];