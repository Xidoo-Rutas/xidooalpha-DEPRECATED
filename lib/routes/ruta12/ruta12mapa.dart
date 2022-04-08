import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xidooalpha/pages/perfil.dart';
import 'package:xidooalpha/routes/ruta10/rutadiez.dart';
import 'package:xidooalpha/routes/ruta10/rutadiez_a_estancias.dart';
import 'package:xidooalpha/routes/ruta12/rutadoce_a_conalep.dart';
import 'package:xidooalpha/routes/ruta12/rutadoce_a_seguro.dart';
import 'package:xidooalpha/routes/selectorutas.dart';

class Ruta12mapa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          FlutterMap(
        options: MapOptions(
          center: latLng.LatLng(20.5739, -101.1957),
          zoom: 15.0,
        ), 
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/tadeovega/cl1n6mi0t002c15nzusnf47lj/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ",
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
                point: latLng.LatLng(20.524076, -101.199094),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bus),
                      color:Colors.orange,
                      splashColor: Colors.orange,
                      highlightColor: Colors.orange,
                      iconSize: 30.0,
                      tooltip: 'Ruta 12',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rutadoce_a_seguro())
                        );
                      },
                    ),
                  ),
                            
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.590984, -101.218791),
                builder: (ctx) =>
                Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bus),
                      color:Colors.blue,
                      splashColor: Colors.blue,
                      highlightColor: Colors.blue,
                      iconSize: 30.0,
                      tooltip: 'Ruta 12',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rutadoce_a_conalep())
                        );
                      },
                    ),
                  ),
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.585849, -101.212288),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){
                        
                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.580260, -101.206665),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){
                        
                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.579645, -101.204699),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){
                        
                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.566461, -101.199176),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.563087, -101.200850),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.554428,-101.1990711),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.562778, -101.197603),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.568909, -101.195471),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.5734235,-101.1981017),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.578619, -101.200523),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.579327, -101.202519),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.5802032,-101.2056319),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.hail),
                      color:Colors.amber,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                      iconSize: 30.0,
                      onPressed: (){

                      },
                    ),
                  ),
              )
            ]
          )  
        ],
      ),
        Align(
          alignment: Alignment.centerRight,
          child: FloatingActionButton(
            backgroundColor: Colors.amber,   
            
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Selectorutas())
              );
            },
            child: Icon(Icons.map, color: Colors.white,),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
          child: Container(
            height: 50,
            width: 200,
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.blue,
                borderRadius: new BorderRadius.circular(20)
              ),
              child: Text(
                "   Ruta 12",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w700,
                  fontSize: 40),
                )
              ),
            ),
          ),
      ],
      )
    );
  }
}