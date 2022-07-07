import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:xidooalpha/routes/ruta19/rutadiecinueve_a_la_luz.dart';
import 'package:xidooalpha/routes/ruta19/rutadiecinueve_a_las_estancias.dart';
import 'package:xidooalpha/routes/selectorutas.dart';

class Ruta {
  double? lng;
  double? lat;


  Ruta({
    required this.lng,
    required this.lat,
  });
  
  static Ruta fromJson(Map<String, dynamic> data ){
    return Ruta(
      lng: (data['lng'] as num).toDouble(),
      lat: (data['lat'] as num).toDouble(),
    );
  }
}

class RutaR {

  double? lngR;
  double? latR;

  RutaR({
    required this.lngR,
    required this.latR
  });
  
  static RutaR fromJson(Map<String, dynamic> dataR){
    return RutaR(
      lngR: (dataR['lng'] as num).toDouble(),
      latR: (dataR['lat'] as num).toDouble(),
    );
  }
}
class Ruta19mapa extends StatelessWidget {
  List<latLng.LatLng> latlngList = <latLng.LatLng>[];
  List<latLng.LatLng> latlngListR = <latLng.LatLng>[];

  @override
  Widget build(BuildContext context) {
  readJson();
  readJsonR();

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
            urlTemplate: "https://api.mapbox.com/styles/v1/tadeovega/cl1och1oj001t14njvda04b20/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ",
            additionalOptions: {
              'accessToken': 'pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ',
              'id': 'mapbox.mapbox-streets-v8'
            }
          ),
            PolylineLayerOptions(polylines: [
              Polyline(
                
                isDotted: false,
                points: latlngList,
                // isDotted: true,
                color: Color.fromARGB(255, 0, 177, 9),
                strokeWidth: 3.0,
                borderColor: Color.fromARGB(255, 242, 8, 8),
                borderStrokeWidth: 0.1,
              ),
            ]),
            PolylineLayerOptions(polylines: [
              Polyline(
                
                isDotted: false,
                points: latlngListR,
                // isDotted: true,
                color: Color.fromARGB(255, 235, 110, 0),
                strokeWidth: 3.0,
                borderColor: Color.fromARGB(255, 242, 8, 8),
                borderStrokeWidth: 0.1,
              ),
          ]),
           MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.553919, -101.181037),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bus),
                      color:Colors.orange,
                      splashColor: Colors.orange,
                      highlightColor: Colors.orange,
                      iconSize: 30.0,
                      tooltip: 'Ruta 19',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rutadiecinueve_a_las_estancias())
                        );
                      },
                    ),
                  ),
                            
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.565583, -101.224192),
                builder: (ctx) =>
                Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bus),
                      color:Colors.green,
                      splashColor: Colors.green,
                      highlightColor: Colors.green,
                      iconSize: 30.0,
                      tooltip: 'Ruta 19',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rutadiecinueve_a_la_luz())
                        );
                      },
                    ),
                  ),
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.570634, -101.221611),
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
                point: latLng.LatLng(20.573888, -101.209756),
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
                point: latLng.LatLng(20.573076, -101.207342),
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
                point: latLng.LatLng(20.571526, -101.202963),
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
                point: latLng.LatLng(20.572296, -101.198603),
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
                point: latLng.LatLng(20.566182, -101.199251),
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
                point: latLng.LatLng(20.5628257,-101.1975828),
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
                point: latLng.LatLng(20.5641401,-101.1971185),
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
                point: latLng.LatLng(20.5754779,-101.2044312),
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
                point: latLng.LatLng(20.578204, -101.214960
),
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
                color: Colors.green,
                borderRadius: new BorderRadius.circular(20)
              ),
              child: Text(
                "   Ruta 19",
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
    readJson() async {
    final String response = await rootBundle.loadString('assets/ruta_19/19_ida.json');
    final data = await json.decode(response);
    for (var punto in data){
      latlngList.add(latLng.LatLng(punto["lat"], punto["lng"]));
    }
  }
    readJsonR() async {
    final String responseR = await rootBundle.loadString('assets/ruta_19/19_regreso.json');
    final dataR = await json.decode(responseR);
    for (var punto in dataR){
      latlngListR.add(latLng.LatLng(punto["lat"], punto["lng"]));
    }
  }

}