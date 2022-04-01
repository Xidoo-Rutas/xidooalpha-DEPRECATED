import 'package:xidooalpha/modelos/negocios.dart';
import 'package:xidooalpha/peticiones/pNegocios.dart';
import 'package:flutter/cupertino.dart';
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
  late TextEditingController controllerSurname;
  late TextEditingController controllerPhone;
  late String id;

  @override
  void initState() {
    Client c = widget._client;
    controllerName = new TextEditingController(text: c.name);
    controllerSurname = new TextEditingController(text: c.surname);
    controllerPhone = new TextEditingController(text: c.phone);
    id = c.id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modificar Contacto"),
      ),
      body: ListView(
        children: [
          CupertinoButton(
              onPressed: () {
                String name = controllerName.text;
                String surname = controllerSurname.text;
                String phone = controllerPhone.text;

                if (name.isNotEmpty && surname.isNotEmpty && phone.isNotEmpty) {
                  Client c = new Client(
                      name: name, surname: surname, phone: phone, id: id);

                  modifyClient(c).then((client) {
                    if (client.id != '') {
                      print('se modifico el cliente');
                      Navigator.pop(context, client);
                    }
                  });
                }
              },
              child: Text("Actualizar")),
        ],
      ),
    );
  }
}
