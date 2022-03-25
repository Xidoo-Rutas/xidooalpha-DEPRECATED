
import 'package:flutter/material.dart';
import 'package:xidooalpha/style.dart';
import 'NegocioVentana.dart';
//import negocio ventana

void main() => runApp(Comercios());

class Comercios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //font
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.search,
              size: 27,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Negocios Salmantinos", style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700
                    ),),              
                  ],
                ),
                SizedBox(height: 10,),
                Text("Los mejores negocios de la ciudad", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: 350,
                        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.yellow[700], 
                          boxShadow: [BoxShadow(spreadRadius: 0, offset: Offset(0,10), blurRadius: 0, color: Colors.amber.withOpacity(0.4))]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/nieve.png")
                                  )
                                ),),
                            ),
                            SizedBox(height: 15,),
                            Text("Nieves Wini", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),        
                                Text(" 25 Calificaciones", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10
                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("Las mejores nieves salmantinas, con mas de 20 años en el mercado", style: TextStyle(
                              color: Colors.white,
                              fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          height: 165,
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: green,
                            boxShadow: [BoxShadow(spreadRadius: 0, offset: Offset(0,10), blurRadius: 0, color: green.withOpacity(0.4))]                             
                          ),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/fruta.png")
                                  )
                                ),),
                            ),
                            SizedBox(height: 15,),
                            Text("Fruteria Don Beto", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 14,
                                ),                                        
                              ],
                            ),
                          ],
                        ),
                        ),
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.35,
                            height: 165,
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: black,
                              boxShadow: [BoxShadow(spreadRadius: 0, offset: Offset(0,10), blurRadius: 0, color: black.withOpacity(0.4))]                             
                            ),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/comida.png")
                                    )
                                  ),),
                              ),
                              SizedBox(height: 15,),
                              Text("Cocina Juanita", style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),                                        
                                ],
                              ),
                            ],
                          ),
                          ),                      
                        ],                      
                      ),                      
                      ],                      
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Lugares", style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700
                    ),),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                placesWidget("Hotel", "Shidoquil"),
              ],
            ),
          ),
        )
      ),
    );
  }
  Row placesWidget(String img, String name)
  {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/restaurante.png")
            ) 
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                ],
              ),
              Text("Los mejores chilaquiles de la ciudad, solo usamos ingredientes de calidad!")
            ],
          ),
        ),
        InkWell(
          onTap: openNegocioVentana,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: greenBtn
            ),
            child: Text("Ordena ahora", style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700          
            ),),
          ),
        )
      ],
    );
  }
  void openNegocioVentana()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>NegocioVentana()));
  }//abrir otra ventana
}