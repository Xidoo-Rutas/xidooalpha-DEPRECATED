import 'package:latlong2/latlong.dart';

class MapMarker{
  const MapMarker({
    required this.location,

  });

  final LatLng location;
}

final _locations = [
  LatLng (0, -0),
LatLng(20.59228457289647, -101.18484832552),
LatLng(20.593807392482937, -101.18221199355212),
LatLng(20.594548809739425, -101.1792563632345),
LatLng(20.595177976954435, -101.17860415407795),
LatLng(20.593374682348834, -101.16396988681754),
LatLng(20.5822,-101.1907744),
LatLng(20.5814284,-101.1971429),
LatLng(20.5699964,-101.2006714),
LatLng(20.5666775,-101.1989446),
LatLng(20.554428,-101.1990711),
LatLng(20.5699846,-101.1948957),
LatLng(20.5713811,-101.1990748),

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
    
];