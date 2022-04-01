import 'package:latlong2/latlong.dart';

class MapMarker{
  const MapMarker({
    required this.image,
    required this.title,
    required this.address,
    required this.location,

  });
  final String image;
  final String title;
  final String address;
  final LatLng location;
}

final _locations = [
  LatLng (20.56829998534015, -101.1977397),
  LatLng (20.584050402702015, -101.23016706779129),

];


final mapMaker = [
  MapMarker(
    image: './images/map.png', 
    title: 'Casa de la Cultura', 
    address: 'Zona Centro', 
    location: _locations[0],
    ),
    MapMarker(
    image: './images/map.png', 
    title: 'Via Alta', 
    address: 'Camino a mancera', 
    location: _locations[1],
    ),
    
];