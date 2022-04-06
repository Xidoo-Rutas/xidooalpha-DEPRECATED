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
  LatLng (0, -0),
  LatLng (20.567437107220847, -101.1973854630191),
  LatLng (20.584050402702015, -101.23016706779129),
  LatLng (20.585517510719033, -101.21463743233004),
  LatLng (20.56876085382797, -101.20635040504249),
  LatLng (20.589080326660678, -101.21942977319901),
  LatLng (20.550983979847246, -101.20213893858791),
  LatLng (20.576917078393198, -101.19372013239746),
  LatLng (20.567721640755973, -101.19829402450955),

];


final mapMaker = [
  MapMarker(
    image: './images/point.png', 
    title: 'Seleccione locación', 
    address: '', 
    location: _locations[0],
    ),
  MapMarker(
    image: './images/casacultura.jpg', 
    title: 'Casa de la Cultura', 
    address: 'C. Revolución 204, Centro, 36700 Salamanca, Gto.', 
    location: _locations[1],
    ),
    MapMarker(
    image: './images/viaalta.jpg', 
    title: 'Via Alta', 
    address: 'Cam. a Mancera 214, Las Glorias, 36766 Salamanca, Gto.', 
    location: _locations[2],
    ),
    MapMarker(
    image: './images/galerias.jpg', 
    title: 'Plaza Galerias', 
    address: 'Blvd. Faja de Oro 1502, Los Rangeles, 36749 Salamanca, Gto.', 
    location: _locations[3],
    ),
    MapMarker(
    image: './images/ecoparque.jpg', 
    title: 'EcoParque', 
    address: 'Fraccionamiento del Parque 3ra Secc. Salamanca, Gto', 
    location: _locations[4],
    ),
    MapMarker(
    image: './images/dnorte.jpg', 
    title: 'Deportiva Norte', 
    address: 'De Los Deportes 503, Deportivo, 36743 Salamanca, Gto.', 
    location: _locations[5],
    ),
    MapMarker(
    image: './images/dsur.jpg', 
    title: 'Deportiva Sur', 
    address: 'Blvd Valle de Santiago, Benito Juárez, 36790 Salamanca, Gto.', 
    location: _locations[6],
    ),
    MapMarker(
    image: './images/mamor.jpg', 
    title: 'Campo de Béisbol Ing. Antonio M. Amor', 
    address: 'Ébano 107, Bellavista, 36730 Salamanca, Gto.', 
    location: _locations[7],
    ),
    MapMarker(
    image: './images/sanagus.jpg', 
    title: 'Templo de San Agustín', 
    address: 'C. Revolución 177, Centro, 36700 Salamanca, Gto.', 
    location: _locations[8],
    ),
];