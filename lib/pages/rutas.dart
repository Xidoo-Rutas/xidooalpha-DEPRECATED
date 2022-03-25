import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Rutas extends StatelessWidget {
  const Rutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text('vistaBetaRutas'),
      //),
        body:WebView(
          initialUrl: "https://xidoo.netlify.app/",
          javascriptMode: JavascriptMode.unrestricted,
          ),
    );
  }

}
