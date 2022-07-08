import 'package:latlong2/latlong.dart';

class MapMarker{
  const MapMarker({
    required this.location,

  });

  final LatLng location;
}

final _locations = [
  LatLng (0, -0),
  LatLng (20.570634, -101.221611),
  LatLng (20.573888, -101.209756),
  LatLng (20.573076, -101.207342),
  LatLng (20.571526, -101.202963),
  LatLng (20.572296, -101.198603),
  LatLng (20.566182, -101.199251),
  LatLng (20.5628257,-101.1975828),
  LatLng (20.5641401,-101.1971185),
  LatLng(20.5754779,-101.2044312),
  LatLng(20.578204, -101.214960),

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

];