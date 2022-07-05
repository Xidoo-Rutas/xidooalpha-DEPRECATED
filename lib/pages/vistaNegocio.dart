import 'package:xidooalpha/modelos/negocios.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:xidooalpha/pantallas/text_box.dart';

class ModifyContact extends StatefulWidget {
  final Client _client;
  const ModifyContact(this._client);
  @override
  State<StatefulWidget> createState() => _ModifyContact();
}

class _ModifyContact extends State<ModifyContact> {
  late TextEditingController controllerName;
  late TextEditingController controllercategoria;
  late TextEditingController controllerPhone;
  late TextEditingController controllerAddress;
  late TextEditingController controllerEslogan;
  late TextEditingController controllerDescripcion1;
  late TextEditingController controllerDesc2;
  late TextEditingController controllerEmail;
  late String id;

  @override
  void initState() {
    Client c = widget._client;
    controllerName = new TextEditingController(text: c.name);
    controllercategoria = new TextEditingController(text: c.categoria);
    controllerPhone = new TextEditingController(text: c.phone);
    controllerAddress = new TextEditingController(text: c.addres);
    controllerEslogan = new TextEditingController(text: c.eslogan);
    controllerDescripcion1 = new TextEditingController(text: c.descriptionNegocio);
    controllerDesc2 = new TextEditingController(text: c.descriptionNegocio2);
    controllerEmail = new TextEditingController(text: c.correoElectronico);
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
        child:ListView(
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 10),
          //   child: Container(
          //     child: Text(
          //       controllerName.text, //de la base de datos
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         color: Color(0xff242424),
          //         fontSize: 12,
          //         fontWeight: FontWeight.w400
          //       ),
          //       ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(top: 0, left: 0, right: 0),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),),
                margin: const EdgeInsets.only(left: 0, right: 0),
                child: Image.network(
                  
                  
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'
              ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 40),
            child: Container(
              child: Text(
                
                controllerName.text, //de la base de datos
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.yellowAccent.shade700,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                ),
                
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 40),
            child: Container(
              child: Text(
                controllerEslogan.text, //de la base de datos
                textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
                ),
                ),
                
            ),
          ),
                    
          Container(
            margin: EdgeInsets.only(top: 0),
            child: const Text(
                    "______________________________________________", //de la base de datos
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                    ),
                    ),
                ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 40),
            child: const Text(
              "Direccion",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,

                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 18.0,
                fontStyle: FontStyle.normal
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 40),
            child: Text(
              controllerAddress.text,
              textAlign: TextAlign.left,
              style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
            ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 40),
            child: const Text(
              "Telefono",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 18.0,
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 40),
            child: Text(
              controllerPhone.text,
              textAlign: TextAlign.left,
              style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
            ),
              ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 40),
            child: Container(
                child: Text(
              controllerDescripcion1.text,
                textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
            ),
              ),
              )
            ),
          Container(
            margin: EdgeInsets.only(top: 0),
            child: const Text(
                    "______________________________________________", //de la base de datos
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                    ),
                    ),
                ),
          
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 40),
            child: Container(
                child: Text(
              controllerDesc2.text,
                textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
            ),
              ),
              )
            ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 40),
            child: const Text(
                    "Datos del negocio", //de la base de datos
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 214, 32),
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 40),
            child: const Text(
              "categoria del negocio",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 18.0,
                
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 40),
            child: Container(
              child: Text(
                controllercategoria.text, //de la base de datos
                textAlign: TextAlign.left,
                style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
            ),
                ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 40),
            child: const Text(
              "Correo electronico",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 40),
            child: Text(
              controllerEmail.text,
              textAlign: TextAlign.left,
              style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15.0,
            fontStyle: FontStyle.normal
            ),
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
