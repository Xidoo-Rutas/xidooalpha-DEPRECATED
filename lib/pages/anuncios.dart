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
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent.shade700,
        shadowColor: Colors.black,
        title: Text('Anuncios'),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white54
            //   gradient: LinearGradient(
            //    begin: Alignment.topCenter,
            //    end: Alignment.bottomCenter,
            //    colors: [
            //      Color(0xff242424),
            //      Colors.yellowAccent.shade400,
            //    ],
            //  )
            ),
        margin: EdgeInsets.only(
          bottom: 55.0,
        ),
        child: getClients(context, listClient()),
      ),
      floatingActionButton: MaterialButton(
        //backgroundColor: Colors.amberAccent,
        color: Colors.yellowAccent.shade700,
        elevation: 10,
        onPressed: () {
          setState(() {
            _MyHomePageState();
          });
        },
        child: const Text('Actualizar'),
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
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(-5.0, 5.0), //(dy, dx)
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
              title: Text(noticias[index].titulo ??
                  ''), //?? verifica que no sea nulo, en caso de que sea la app se detiene
              subtitle: Text(noticias[index].dependencia ??
                  ''), //?? verifica que no sea nulo, en caso de que sea la app se detiene
              trailing: Icon(
                Icons.bookmark_add_outlined,
                color: Colors.red,
              ),
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
