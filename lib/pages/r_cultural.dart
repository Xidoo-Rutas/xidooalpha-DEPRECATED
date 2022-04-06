import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:xidooalpha/puntosMap/map_marker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


//const MAPBOX_ACCESS_TOKEN =
//'pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ';
//const MAPBOX_STYLE = 'mapbox/dark-v10';
const MARKER_COLOR = Color.fromARGB(255, 247, 204, 12);
//const MARKER_SIZE_EXPANDED = 50;
//const MARKER_SIZE_SHRINKED = 38.0;


final _myLocation = LatLng(20.5739, -101.213);

class Rcultural extends StatefulWidget {
  const Rcultural({Key? key}): super(key: key);

  @override
  State<Rcultural> createState() => _RculturalState();
}

class _RculturalState extends State<Rcultural> {


  final _pageController = PageController();
  int _selectedIndex = 0;


List<Marker> _buildMaarkers(){
  final _markerList = <Marker>[];
  for (int i=0; i< mapMaker.length; i++){
    final mapItem = mapMaker[i];
    _markerList.add(
      Marker(
        height: 50,
        width: 50,
        point: mapItem.location, 
        builder: (_){
      return GestureDetector(
        onTap: (){
          _pageController.animateToPage(i, duration: const Duration(milliseconds: 500), curve: Curves.linearToEaseOut);
          print('Selected ${mapItem.title}');
        },
        child: _LocationMarker(
          selected: _selectedIndex == i,
        ),
      );
    },),);
  }
  return _markerList;
}

  @override
  Widget build(BuildContext context) {
    final _markers = _buildMaarkers();
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Ruta Cutural'),
      ),*/
      body: Stack(
        children: [
          FlutterMap
          (options: MapOptions(
            center: LatLng(20.5739, -101.1957),
            minZoom: 5,
            maxZoom: 25,
            zoom: 13,
          ),
          nonRotatedLayers:[
            TileLayerOptions(
              urlTemplate: 'https://api.mapbox.com/styles/v1/gaelrazo/cl1jvvjdk001214pk6b0fi5de/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZ2FlbHJhem8iLCJhIjoiY2t3NDRjc2VhMGhwdTJxbnRxb3Q3d2tzYyJ9.P9i8yaxdMsVFk36Mg2h6DA',
              additionalOptions: {
                'accessToken': 'pk.eyJ1IjoiZ2FlbHJhem8iLCJhIjoiY2t3NDRjc2VhMGhwdTJxbnRxb3Q3d2tzYyJ9.P9i8yaxdMsVFk36Mg2h6DA',
                'id': 'mapbox/light-v10'
              },
            ),
            MarkerLayerOptions(
              markers: _markers,
              ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  point: _myLocation, 
                  builder: (_){
                    return _MiLocacion ();
                  }),
              ]
            ),
          ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 70,
            height: MediaQuery.of(context).size.height * 0.2,
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: mapMaker.length,
              itemBuilder: (context, index) {
              final item = mapMaker[index];
              return _MapItemDetails(
                mapMarker: item,
                );
            },
            ),
          )
        ],
      ),
    );
  }
}

class _LocationMarker extends StatelessWidget {
  const _LocationMarker ({ Key? key, this.selected = false }) : super(key: key);

  final bool selected;
  @override
  Widget build(BuildContext context) {
    //final size = selected ? MARKER_SIZE_EXPANDED : MARKER_SIZE_SHRINKED;
    return Center(
      child: AnimatedContainer(
        height: 30,
        width: 30,
        duration: const Duration(milliseconds: 400),
        child: Image.asset('./images/point.png'),
        ),
    );
  }
}

class _MiLocacion extends StatelessWidget {
  const _MiLocacion({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 0,
                      width: 0,
                      //decoration: BoxDecoration(
                        //color: MARKER_COLOR,
                        //shape: BoxShape.circle,
                      //),
                    );
  }
}

class _MapItemDetails extends StatelessWidget {
  const _MapItemDetails({ 
    Key? key, 
    required this.mapMarker,
     }) : super(key: key);

    final MapMarker mapMarker;

  @override
  Widget build(BuildContext context) {
    final _styleTitle = TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold );
    final _styleAdress = TextStyle(color: Color.fromARGB(255, 59, 59, 59), fontSize: 13);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: 
                    Image.asset(mapMarker.image),
                    
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            mapMarker.title, 
                            style: _styleTitle,
                            textAlign: TextAlign.center,
                            ),
                          Text(
                            mapMarker.address, 
                            style: _styleAdress,
                            textAlign: TextAlign.center,
                            ),
                            /*MaterialButton(
                              padding: EdgeInsets.zero,
                              onPressed: () => null, 
                              color: MARKER_COLOR,
                              elevation: 6,
                              child: Text('LLAMAR', style: TextStyle(fontWeight: FontWeight.bold),),
                              )*/
                        ],
                      ),
                      ),
              ]),
            ),
            
          ],
        ),
      ),
    );
  }
}

/*
class Rcultural extends StatefulWidget {

  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<Rcultural> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
        FlutterMap(
        options: MapOptions(
          center: latLng.LatLng(20.5739, -101.1957),
          zoom: 15.0,
        ), 
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/tadeovega/cktszafdy0uc917m8gylcaft6/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ",
            additionalOptions: {
              'accessToken': 'pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ',
              'id': 'mapbox.mapbox-streets-v8'
            }
          ),
           MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.56761418443175, -101.19789590929972),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                      color:Colors.white70,
                      iconSize: 45.0,
                      onPressed: (){
                        showModalBottomSheet(
                          context: context,
                          builder: (builder) {
                           return MaterialApp(
                             debugShowCheckedModeBanner: false,
                             title: 'El titulo de esta ventana',
                             home: Scaffold(
                               resizeToAvoidBottomInset: false,
                               appBar: AppBar(
                                 title: Text('La casa de la cultura'),
                                 backgroundColor: Colors.black87,
                               ),
                              body: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                           ListTile(                                        
                                            leading: new Icon(FontAwesomeIcons.home),
                                            title: new Text('Casa de la cultura'),
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            leading: new Icon(FontAwesomeIcons.mapMarkerAlt),
                                            title: new Text('Calle Revolución 204, Centro, 36700 Salamanca, Gto.'),
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                          ),
                                          const Image(
                                            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all<Color?>(Colors.blueGrey[700])
                                            ),
                                            child: new Icon(FontAwesomeIcons.shareAlt),
                                            onPressed: () => Navigator.pop(context),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.amber,
                                              
                                            ),
                                            )
                                  ],
                                  
                                ),
                              ),
                              ),                          
                           );
                          }
                        );
                      },
                    ),
                  ),
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.55135107536376, -101.20241231014904),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                      color: Colors.white70,
                      iconSize: 45.0,
                      onPressed: (){
                        showModalBottomSheet(
                          context: context,
                          builder: (builder) {
                           return MaterialApp(
                             debugShowCheckedModeBanner: false,
                             title: 'Deportiva sur',
                             home: Scaffold(
                               resizeToAvoidBottomInset: false,
                               appBar: AppBar(
                                 title: Text('Deportiva sur'),
                                 backgroundColor: Colors.black87,
                               ),
                              body: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    ListTile(                                        
                                            leading: new Icon(FontAwesomeIcons.home),
                                            title: new Text('Blvrd valle de santiago'),
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            leading: new Icon(FontAwesomeIcons.mapMarkerAlt),
                                            title: new Text('Calle Morelos, El Pirul, Salamanca, Gto.'),
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                          ),
                                          const Image(
                                            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all<Color?>(Colors.blueGrey[700])
                                            ),
                                            child: new Icon(FontAwesomeIcons.shareAlt),
                                            onPressed: () => Navigator.pop(context),
                                          ),
                                  ],
                                ),
                              ),
                             ),                          
                           );
                          }
                        );
                      },
                    ),
                  ),
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.58482572095579, -101.22417856362682),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                      color: Colors.white70,
                      iconSize: 45.0,
                      onPressed: (){
                        showModalBottomSheet(
                          context: context,
                          builder: (builder) {
                           return MaterialApp(
                             debugShowCheckedModeBanner: false,
                             title: 'El titulo de esta ventana',
                             home: Scaffold(
                               resizeToAvoidBottomInset: false,
                               appBar: AppBar(
                                 title: Text('Glorieta Bicentenario'),
                                 backgroundColor: Colors.black87,
                               ),
                              body: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    ListTile(                                        
                                            leading: new Icon(FontAwesomeIcons.home),
                                            title: new Text('Glorieta Bicentenario'),
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            leading: new Icon(FontAwesomeIcons.mapMarkerAlt),
                                            title: new Text('Calle Morelos, El Pirul, Salamanca, Gto.'),
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                          ),
                                          const Image(
                                            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all<Color?>(Colors.blueGrey[700])
                                            ),
                                            child: new Icon(FontAwesomeIcons.shareAlt),
                                            onPressed: () => Navigator.pop(context),
                                          ),
                                  ],
                                ),
                              ),
                             ),                          
                           );
                          }
                        );
                      },
                    ),
                  ),
              ), 
            ]
          )
        ],
      )//trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/