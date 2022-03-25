import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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