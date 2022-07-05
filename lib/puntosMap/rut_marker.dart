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
      MapMarker(
    image: './images/casacultura.jpg', 
    title: 'Casa de la Cultura', 
    address: 'C. Revolución 204, Centro, 36700 Salamanca, Gto.', 
    location: _locations[9],
    ),
    MapMarker(
    image: './images/viaalta.jpg', 
    title: 'Via Alta', 
    address: 'Cam. a Mancera 214, Las Glorias, 36766 Salamanca, Gto.', 
    location: _locations[10],
    ),
    MapMarker(
    image: './images/galerias.jpg', 
    title: 'Plaza Galerias', 
    address: 'Blvd. Faja de Oro 1502, Los Rangeles, 36749 Salamanca, Gto.', 
    location: _locations[11],
    ),
    MapMarker(
    image: './images/ecoparque.jpg', 
    title: 'EcoParque', 
    address: 'Fraccionamiento del Parque 3ra Secc. Salamanca, Gto', 
    location: _locations[12],
    ),
    MapMarker(
    image: './images/dnorte.jpg', 
    title: 'Deportiva Norte', 
    address: 'De Los Deportes 503, Deportivo, 36743 Salamanca, Gto.', 
    location: _locations[13],
    ),
    MapMarker(
    image: './images/dsur.jpg', 
    title: 'Deportiva Sur', 
    address: 'Blvd Valle de Santiago, Benito Juárez, 36790 Salamanca, Gto.', 
    location: _locations[14],
    ),

    
];