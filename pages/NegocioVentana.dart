import 'package:flutter/material.dart';
import 'package:xidooalpha/pages/comercios.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NegocioVentana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: negocioventana(),
    );
  }
}

class negocioventana extends StatefulWidget {
  @override
  _negocioventanaState createState() => _negocioventanaState();
}

class _negocioventanaState extends State<negocioventana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      image: DecorationImage(
                        image: AssetImage("images/salamanca.jpg"),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: regresarComercios,
                              icon: Icon(Icons.arrow_back, color: Colors.white,),                      
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.search, color: Colors.white,),
                            ),
                          ],
                        ),
                        SizedBox(height: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text("Shidoquil", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30
                                ),),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Icon(Icons.star, color: Colors.white,),
                                    Text(" 250 Opiniones ", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),)
                                  ],
                                ),                        
                              ],
                            ),
                             Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white
                                  ),
                                  child: Center(
                                    child: Icon(Icons.favorite, color: Colors.redAccent, size: 40,),
                                    ),
                                ),
                          ],
                        ),
                        SizedBox( height: 15,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("El mejor shilaquil de la ciudad", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),                        
                      ],
                    ),
                  ),
                  Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Descripccion", style: TextStyle(
                                    fontSize: 22,
                                    fontWeight:  FontWeight.w700
                                  ),),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                      height: 0.5,
                                      color: Colors.grey,                                  
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                child: Column(
                            children: [
                              Row(                                
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(" Los mejores chilaquiles de la ciudad\n buscamos la manera de mejorar el\n chilaquil y ser diferentes y unicos")
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                              padding: EdgeInsets.all(70),
                              decoration: BoxDecoration(
                              color: Colors.black87,
                              image: DecorationImage(
                                image: AssetImage("images/map.png"),
                                fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          ), 
                        ),
                      ],
                    ),
                  ),
                ],
              ),              
            ),
          ),
        ],
      ),
    );
  }
    void regresarComercios()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Comercios()));
  }//abrir otra ventana
}
