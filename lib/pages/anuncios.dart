import 'package:xidooalpha/modelos/noticias.dart';
import 'package:xidooalpha/peticiones/pAnuncios.dart';
import 'package:flutter/material.dart';
import 'package:xidooalpha/pages/vistaAnuncios.dart';

void main() => runApp(Anuncios());

class Anuncios extends StatelessWidget {
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
      //backgroundColor: Colors.white54,
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
            //   gradient: LinearGradient(
            //    begin: Alignment.topCenter,
            //    end: Alignment.bottomCenter,
            //    colors: [
            //      Color(0xff242424),
            //      Colors.yellowAccent.shade400,
            //    ],
            //  )
            margin: EdgeInsets.only(bottom: 55.0, ),
        child: getClients(context, listClient()),
            ),
      
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          setState(() {
            _MyHomePageState();
          });
        },
        child: Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }

  Widget getClients(BuildContext context, Future<List<Noticias>> futureClient) {
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

  Widget clientList(List<Noticias> noticias) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (context, index) {
        return Container(
            height: 125,
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
            margin: EdgeInsets.only(
                bottom: 15.0, left: 10.0, right: 10.0, top: 10.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => MostrarNoticia(noticias[index])))
                    .then((newContact) {
                  setState(() {});
                });
              },
              onLongPress: () {},
              title: 
              Padding(
                  padding: EdgeInsets.fromLTRB(50, 20, 0, 0),
                  child:                 Text(noticias[index].titulo ??
                  '' , 
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800)), 
                ),//?? verifica que no sea nulo, en caso de que sea la app se detiene
              subtitle: 
              Padding(
                  padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
                  child:       Text(noticias[index].dependencia ??
                  '', 
                    style: TextStyle(
                      fontSize: 17,
                      ))),//?? verifica que n), //?? verifica que no sea nulo, en caso de que sea la app se detiene
              /*trailing: Icon(
                Icons.bookmark_add_outlined,
                color: Colors.red,
              ),*/
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 127,
                  maxHeight: 97,
                ),
                child: Image.network(
                    'https://i.pinimg.com/originals/89/39/de/8939de5aa22d28707dcc256176e91d1c.png'),
                // leading: CircleAvatar(
                //   backgroundColor: Colors.black,
                //   child: Text(noticias[index].nombreResponsable.substring(0, 1) ?? true), //solo muestra una letra
                // ),
              ),
            ));
      },
    );
  }
}
