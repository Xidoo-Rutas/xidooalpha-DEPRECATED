import 'package:latlong2/latlong.dart';

class MapMarker{
  const MapMarker({
    required this.location,

  });

  final LatLng location;
}

final _locations = [
  LatLng (0, -0),
  LatLng (20.576395,-101.2317649),
  LatLng (20.5820374,-101.2305257),
  LatLng (20.576076, -101.215053),
  LatLng (20.5739148,-101.2096733),
  LatLng (20.571481, -101.202975),
  LatLng (20.5722945,-101.1984565),
  LatLng (20.5668118,-101.1853871),
  LatLng (20.5699846,-101.1948957),
  LatLng(20.5707713,-101.1972094),
  LatLng(20.5717965,-101.2003354),
  LatLng(20.5742808,-101.2106362),
  LatLng(20.577599, -101.216448),
  LatLng(20.582487, -101.230852),

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

    
];