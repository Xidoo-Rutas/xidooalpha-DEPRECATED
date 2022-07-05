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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Image.asset(
          "images/logo.png",
          fit: BoxFit.contain,
          height: 150,
        ),
          toolbarHeight: 150,
          backgroundColor: Color.fromARGB(255, 54, 54, 54),
          shadowColor: Color.fromARGB(255, 75, 75, 75),
          shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
          
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
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
                color: Color.fromARGB(229, 229, 229, 229),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black12),
                boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(228, 255, 255, 255),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(
                            -5.0,
                            5.0
                            ), //(dy, dx)
                        ),
                      ],
                ),   
                height: 125,     
                margin: EdgeInsets.only(bottom: 5.0, left: 10.0, right: 10.0, top: 10.0),      
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
                title: 
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 20, 0, 0),
                  child:                 
                  Text(clients[index].name ?? '' , 
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800)), 
                ),
//?? verifica que no sea nulo, en caso de que sea la app se detiene
                subtitle: Padding(
                  padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
                  child:                 
                  Text(clients[index].eslogan ?? '', 
                    style: TextStyle(
                      fontSize: 17,
                      ))),//?? verifica que no sea nulo, en caso de que sea la app se detiene
                trailing: Icon(Icons.heart_broken, color: Colors.red,), 
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
