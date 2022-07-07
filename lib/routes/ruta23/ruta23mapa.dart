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
import 'package:xidooalpha/routes/ruta23/rutaveintitres_a_la_cruz.dart';
import 'package:xidooalpha/routes/ruta23/rutaveintitres_a_la_uts.dart';

import 'package:xidooalpha/routes/ruta12/ruta12mapa.dart';
import 'package:xidooalpha/routes/ruta10/rutadiez.dart';
import 'package:xidooalpha/routes/ruta10/rutadiez_a_estancias.dart';
import 'package:xidooalpha/routes/ruta12/rutadoce_a_conalep.dart';
import 'package:xidooalpha/routes/ruta12/rutadoce_a_seguro.dart';
import 'package:xidooalpha/routes/selectorutas.dart';
import 'package:xidooalpha/routes/ruta19/ruta19mapa.dart';
import 'package:xidooalpha/routes/ruta23/ruta23mapa.dart';
import 'package:xidooalpha/pages/rutas.dart';
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

class Ruta23mapa extends StatelessWidget {
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
            urlTemplate: "https://api.mapbox.com/styles/v1/tadeovega/cl1oj1w5g001n14o4hvwpt7as/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ",
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
                point: latLng.LatLng(20.559290, -101.166947),
                builder: (ctx) =>
                  Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bus),
                      color:Colors.orange,
                      splashColor: Colors.orange,
                      highlightColor: Colors.orange,
                      iconSize: 30.0,
                      tooltip: 'Ruta 23',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rutaveintitres_a_la_uts())
                        );
                      },
                    ),
                  ),
                            
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.583303, -101.241235),
                builder: (ctx) =>
                Container(
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bus),
                      color:Colors.green,
                      splashColor: Colors.green,
                      highlightColor: Colors.green,
                      iconSize: 30.0,
                      tooltip: 'Ruta 23',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rutaveintitres_a_la_cruz())
                        );
                      },
                    ),
                  ),
              ),
              Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.576395,-101.2317649),
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
                point: latLng.LatLng(20.5820374,-101.2305257),
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
                point: latLng.LatLng(20.576076, -101.215053),
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
                point: latLng.LatLng(20.5739148,-101.2096733),
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
                point: latLng.LatLng(20.5739148,-101.2096733),
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
                point: latLng.LatLng(20.571481, -101.202975),
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
                point: latLng.LatLng(20.5722945,-101.1984565),
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
                point: latLng.LatLng(20.5668118,-101.1853871
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
              ),
            Marker(
                width: 80.0,
                height:80,
                point: latLng.LatLng(20.5699846,-101.1948957),
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
                point: latLng.LatLng(20.5707713,-101.1972094),
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
                point: latLng.LatLng(20.5717965,-101.2003354),
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
                point: latLng.LatLng(20.5742808,-101.2106362),
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
                point: latLng.LatLng(20.577599, -101.216448),
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
                point: latLng.LatLng(20.582487, -101.230852),
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
                "   Ruta 23",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w700,
                  fontSize: 40),
                )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 90.0,left: 330, right: 5, top: 500),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black87,
                  ),
                child:ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 50.0),
                    child: Icon(
                    Icons.arrow_downward,
                      size: 30, 
                      color: Color.fromARGB(255, 177, 177, 177)
                        ),
                        ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Colors.amber,   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Selectorutas())
                          );
                        },
                        child: Text(
                          "X",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 0, 189, 9),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ruta23mapa())
                          );
                        },
                        child: Text(
                          "23",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 0, 117, 212),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Rutas())
                          );
                        },
                        child: Text(
                          "10",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 0, 189, 9),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ruta19mapa())
                          );
                        },
                        child: Text(
                          "19",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 0, 117, 212),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ruta12mapa())
                          );
                        },
                        child: Text(
                          "12",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 0, 189, 9),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ruta23mapa())
                          );
                        },
                        child: Text(
                          "23",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 251, 255, 0),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 0, 117, 212),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Selectorutas())
                          );
                        },
                        child: Text(
                          "6",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 243, 19, 11),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Selectorutas())
                          );
                        },
                        child: Text(
                          "?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 243, 19, 11),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Selectorutas())
                          );
                        },
                        child: Text(
                          "?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),


                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                        child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: FloatingActionButton.small(
                        heroTag: null,
                        backgroundColor: Color.fromARGB(255, 243, 19, 11),   
                        
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Selectorutas())
                          );
                        },
                        child: Text(
                          "?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Icon(
                    Icons.arrow_upward,
                      size: 30, 
                      color: Color.fromARGB(255, 177, 177, 177)
                        ),
                        ),      
              ]
          ),
      ),
          ),
      ],
      )
    );
  }
  readJson() async {
    final String response = await rootBundle.loadString('assets/ruta_23/23_ida.json');
    final data = await json.decode(response);
    for (var punto in data){
      latlngList.add(latLng.LatLng(punto["lat"], punto["lng"]));
    }

  }

  readJsonR() async {
    final String responseR = await rootBundle.loadString('assets/ruta_23/23_regreso.json');
    final dataR = await json.decode(responseR);
    for (var punto in dataR){
      latlngListR.add(latLng.LatLng(punto["lat"], punto["lng"]));
    }
  }

}