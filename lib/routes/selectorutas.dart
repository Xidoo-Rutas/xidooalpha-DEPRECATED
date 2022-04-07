import 'package:flutter/material.dart';
import 'package:xidooalpha/pages/rutas.dart';
import 'package:xidooalpha/routes/ruta10/rutadiez.dart';


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
              "    Rutas disponibles",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 20))            
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
            "Ruta 10",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
           IconButton(
            alignment: Alignment.center,
            iconSize: 60,
            color: Colors.amber,
            icon: Icon(Icons.route),
            onPressed: (){
              
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
            onPressed: (){},
          ),
          Text(
            "Ruta 15",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
           IconButton(
            alignment: Alignment.center,
            iconSize: 60,
            color: Colors.amber,
            icon: Icon(Icons.bus_alert_sharp),
            onPressed: (){},
          ),
          Text(
            "Central de camiones",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ]
      )
    );
  }
}