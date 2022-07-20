import 'package:xidooalpha/modelos/noticias.dart';
import 'package:flutter/material.dart';
// import 'package:xidooalpha/pantallas/text_box.dart';

class MostrarNoticia extends StatefulWidget {
  final Noticias _noticia;
  const MostrarNoticia(this._noticia);
  @override
  State<StatefulWidget> createState() => _MostrarNoticia();
}

class _MostrarNoticia extends State<MostrarNoticia> {
  late TextEditingController titulo;
  late TextEditingController dependencia;
  late TextEditingController fecha;
  late TextEditingController parrafo1;
  late TextEditingController parrafo2;
  late TextEditingController parrafo3;
  late String id;

  @override
  void initState() {
    Noticias c = widget._noticia;
    titulo = new TextEditingController(text: c.titulo);
    dependencia = new TextEditingController(text: c.dependencia);
    fecha = new TextEditingController(text: c.fecha);
    parrafo1 = new TextEditingController(text: c.parrafo1);
    parrafo2 = new TextEditingController(text: c.parrafo2);
    parrafo3 = new TextEditingController(text: c.parrafo3);
    id = c.id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Color.fromARGB(255, 51, 51, 51),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
          
        ),
          ),
        body: 
        
        Container(
          margin: EdgeInsets.only(bottom: 70.0,left: 20, right: 20, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromARGB(255, 44, 44, 44),
          ),
          child: ListView(
            children: [
              Container(
                
                margin: EdgeInsets.only(top: 20, left: 20, right: 40),
                  child: Container(
                child: Text(
                  "Escrito por: " + dependencia.text,
                  textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
                ),),
              )),
              Container(
                decoration: BoxDecoration(
                    //color: Colors.black12
                    ),
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
                child: Container(
                  
                    child: Text(titulo.text,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.yellowAccent.shade700,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic)) //titulo
                    ),
              ),
             
              

              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  parrafo1.text,
                  textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  parrafo2.text,
                  textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 40),
                child: const Text(
                  "Correo electronico del escritor:",
                  textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
                ),),
              ),
              
               Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Image.network(
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
                    Expanded(
                        child: Image.network(
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Image.network(
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
