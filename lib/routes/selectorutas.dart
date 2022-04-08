import 'package:flutter/material.dart';
import 'package:xidooalpha/pages/rutas.dart';
import 'package:xidooalpha/routes/ruta10/rutadiez.dart';
import 'package:xidooalpha/routes/ruta12/ruta12mapa.dart';
import 'package:xidooalpha/routes/ruta12/rutadoce_a_seguro.dart';
import 'package:xidooalpha/routes/ruta19/ruta19mapa.dart';
import 'package:xidooalpha/routes/ruta23/ruta23mapa.dart';
import 'package:xidooalpha/routes/ruta6/ruta6mapa.dart';


class Selectorutas extends StatelessWidget {
  const Selectorutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Botones(),
      ),
    );
  }
}

class Botones extends StatelessWidget{
  const Botones({Key? key}):super(key: key);

  @override
  @override
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Text(
              "   Rutas disponibles",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 20))            
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
            child: Text(
              "Ruta 10",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          IconButton(
            alignment: Alignment.center,
            iconSize: 60,
            color: Colors.amber,
            icon: Icon(Icons.route),
            onPressed: (){
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rutas())
              );
            },
          ),
          Text(
            "Ruta 12",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
           IconButton(
            alignment: Alignment.center,
            iconSize: 60,
            color: Colors.amber,
            icon: Icon(Icons.route),
            onPressed: (){
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ruta12mapa())
              );
            },
          ),
          Text(
            "Ruta 19",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
           IconButton(
            alignment: Alignment.center,
            iconSize: 60,
            color: Colors.amber,
            icon: Icon(Icons.route),
            onPressed: (){
               Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ruta19mapa())
              );
            },
          ),
          Text(
            "Ruta 6",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          IconButton(
            alignment: Alignment.center,
            iconSize: 60,
            color: Colors.amber,
            icon: Icon(Icons.route),
            onPressed: (){
               Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ruta6mapa())
              );
            },
          ),
          Text(
            "Ruta 23",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
           IconButton(
            alignment: Alignment.center,
            iconSize: 60,
            color: Colors.amber,
            icon: Icon(Icons.route),
            onPressed: (){
               Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ruta23mapa())
              );
            },
          ),
        ]
      )
    );
  }
}