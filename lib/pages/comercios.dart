import 'package:xidooalpha/modelos/negocios.dart';
import 'package:flutter/cupertino.dart';
import 'package:xidooalpha/peticiones/pNegocios.dart';
import 'package:flutter/material.dart';
import 'package:xidooalpha/pages/vistaNegocio.dart';
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
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          backgroundColor: Colors.yellowAccent.shade700,
      ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade800),
        margin: EdgeInsets.only(bottom: 55.0, ),
        child: getClients(context, listClient()),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: () { 
            setState(() {_MyHomePageState();});
        },
        child: Icon(Icons.refresh),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget getClients(BuildContext context, Future<List<Client>> futureClient) {
    return FutureBuilder(
      future: futureClient,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          //En este case estamos a la espera de la respuesta, mientras tanto mostraremos el cargando...
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());

          case ConnectionState.done:
            if (snapshot.hasError)
              return Container(
                alignment: Alignment.center,
                child: Center(
                  child: Text('Error: ${snapshot.error}'),
                ),
              );
            // print(snapshot.data);
            return snapshot.data != null
                ? clientList(snapshot.data)
                : Container(
                  
                    alignment: Alignment.center,
                    child: Center(
                      child: Text('Sin Datos'),
                    ),
                  );
          default:
            return Text('Recarga la pantalla....!');
        }
      },
    );
  }

  Widget clientList(List<Client> clients) {
    return ListView.builder(
      itemCount: clients.length,
      itemBuilder: (context, index) {
        return 
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
                boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(
                            -5.0,
                            5.0
                            ), //(dy, dx)
                        ),
                      ],
                ),        
                margin: EdgeInsets.only(bottom: 15.0, left: 10.0, right: 10.0, top: 10.0),      
              child: ListTile(
                onTap: () {
                              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ModifyContact(clients[index])))
                .then((newContact) {
              setState(() {
              });
            });
                },
                onLongPress: () {
                },
                title: Text(clients[index].name ?? ''), //?? verifica que no sea nulo, en caso de que sea la app se detiene
                subtitle: Text(clients[index].phone ?? ''),
                trailing: Icon(Icons.heart_broken, color: Colors.red,), //?? verifica que no sea nulo, en caso de que sea la app se detiene
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(clients[index].name.substring(0, 1) ?? true), //solo muestra una letra
                ),
            ),
            );
      },
      
    );
  }

}
