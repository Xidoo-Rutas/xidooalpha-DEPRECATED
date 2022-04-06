import 'package:xidooalpha/modelos/negocios.dart';
import 'package:flutter/material.dart';
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
        toolbarHeight: 100.0,
        backgroundColor: Colors.yellowAccent.shade700,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
        ),
        title: Text(
          controllerName.text,
          style: const TextStyle(
            color: Color(0xff242424),
            fontSize: 30.0,
            fontStyle: FontStyle.normal
            ),
          ),
        actions: [
          IconButton(
            icon: Icon(Icons.star),
            onPressed: (){},
          )
        ],
      ),
      body: 

      Container(
        margin: EdgeInsets.only(bottom: 70.0),
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
            margin: EdgeInsets.only(top: 20),
            child: Container(
              child: Text(
                controllerEslogan.text, //de la base de datos
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffF24C4C),
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: Container(
                child: Text(
              controllerDescripcion1.text,
                textAlign: TextAlign.center,
              ),
              )
            ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Container(
              child: Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                child: Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'
              ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Container(
                child: Text(
                controllerDesc2.text,
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
                controllercategoria.text, //de la base de datos
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
              controllerAddress.text,
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
              controllerPhone.text,
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
              controllerEmail.text,
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
