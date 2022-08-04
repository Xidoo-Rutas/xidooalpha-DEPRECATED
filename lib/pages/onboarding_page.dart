import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xidooalpha/main.dart';
import 'package:xidooalpha/pages/rutas.dart';
import 'package:xidooalpha/routes/ruta19/ruta19mapa.dart';


class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Rutas',
          body: 'Aquí podrás ver todas las rutas del transporte público de Salamanca Guanajuato, los detalles de sus horarios y las paradas más cercanas a ti.',
          image: Image.asset(
            "images/cultural.png",
            height: 280,
            width: 300,
            fit: BoxFit.fill,
          ),
          decoration: getPageDecoration(),
        ),
         PageViewModel(
          title: 'Ruta cultural',
          body: 'Con la ruta cultural podrás conocer los puntos mas importantes de la ciudad, conocer Salamanca nunca fue tan fácil.',
          image: Image.asset(
            "images/rutes.png",
            height: 280,
            width: 300,
            fit: BoxFit.fill,
          ),
          decoration: getPageDecoration(),
        ),
         PageViewModel(
          title: 'Publicidad local',
          body: 'Publicitar un negocio para los salmantinos no será un problema, con Xidoo Rutas el comerciante podrá dar a conocer su negocio.',
          image: Image.asset(
            "images/publicidad.png",
            height: 280,
            width: 350,
            fit: BoxFit.fill,
          ),          decoration: getPageDecoration(),
        ),
         PageViewModel(
          title: 'Anuncios Oficiales',
          body: 'Xidoo Rutas tiene un espacio para que el público salmantino pueda informarse de primera mano lo que acontece día a día en la ciudad.',
          image: Image.asset(
            "images/anuncios.png",
            height: 280,
            width: 320,
            fit: BoxFit.fill,
          ),
          decoration: getPageDecoration(),
        ),
        
      ],
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.amber,
        activeSize: Size.square(15),
        activeColor: Colors.amber,
      ),
      showDoneButton: true,
      done: const Text('Listo', style: TextStyle(fontSize: 20, color: Colors.amber),),
      showSkipButton: true,
      skip: const Text('Saltar', style: TextStyle(fontSize: 20, color: Colors.amber),),
      showNextButton: true,
      next: const Icon(Icons.arrow_forward, size: 20, color: Colors.amber),
      onDone: () => onDone(context),
    ),
  );

  void onDone(context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)  => MyApp()));
  }

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: 28, 
      fontWeight: FontWeight.bold,),
    bodyTextStyle: TextStyle(
      fontSize: 20,
      ),
    imagePadding: EdgeInsets.all(10)
  );

  
}
