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
          backgroundColor: Colors.yellowAccent.shade700,
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 70.0),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    //color: Colors.black12
                    ),
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
                child: Container(
                    child: Text(titulo.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic)) //titulo
                    ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Image.network(
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
                    Expanded(
                        flex: 2,
                        child: Image.network(
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
                    Expanded(
                        child: Image.network(
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
                  ],
                ),
              ),
              Container(
                  child: Container(
                child: Text(
                  "Escrito por: " + titulo.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              )),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                color: Colors.grey,
                child: Text(
                  "Datos del negocio", //de la base de datos
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  parrafo1.text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  parrafo2.text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: const Text(
                  "Correo electronico del escritor:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  dependencia.text,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }
}
