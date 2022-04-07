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
  late TextEditingController nombreResponsable;
  late TextEditingController email;
  late TextEditingController categoria;
  late TextEditingController titulo;
  late TextEditingController descripccion;
  late TextEditingController descripccion2;
  late String id;

  @override
  void initState() {
    Noticias c = widget._noticia;
    nombreResponsable = new TextEditingController(text: c.nombreResponsable);
    email = new TextEditingController(text: c.email);
    categoria = new TextEditingController(text: c.categoria);
    titulo = new TextEditingController(text: c.titulo);
    descripccion = new TextEditingController(text: c.descripccion);
    descripccion2 = new TextEditingController(text: c.descripccion2);
    id = c.id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent.shade700,
      ),
      body: 
      Container(
        margin: EdgeInsets.only(bottom: 70.0),
        child:ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black12
            ),
            margin: EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
            child: Container(
              child: Text(titulo.text) //titulo
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'
                )
              ),
              Expanded(flex:2, 
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'
                )
              ),
              Expanded(
                child: Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'
                  )
                ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Container(
                child: Text(
                nombreResponsable.text,
                textAlign: TextAlign.center,
              ),
              )
            ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: const Text(
                    "Datos del negocio", //de la base de datos
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: const Text(
              "categoria del negocio",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Container(
              child: Text(
                nombreResponsable.text, //de la base de datos
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff242424),
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: const Text(
              "Direccion",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              nombreResponsable.text,
              textAlign: TextAlign.center,
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: const Text(
              "Telefono",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              nombreResponsable.text,
              textAlign: TextAlign.center,
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: const Text(
              "Correo electronico",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              nombreResponsable.text,
              textAlign: TextAlign.center,
              ),
          ),
          // CupertinoButton(
              // onPressed: () {
              //   // String name = controllerName.text;
              //   // String surname = controllerSurname.text;
              //   // String phone = controllerPhone.text;

              //   // if (name.isNotEmpty && surname.isNotEmpty && phone.isNotEmpty) {
              //   //   Client c = new Client(
              //   //       name: name, surname: surname, phone: phone, id: id);

              //   //   modifyClient(c).then((client) {
              //   //     if (client.id != '') {
              //   //       print('se modifico el cliente');
              //   //       Navigator.pop(context, client);
              //   //     }
              //   //   });
              //   // }
              // },
              // child: Text("boton")),
        ],
      ),
      )
    );
  }
}
