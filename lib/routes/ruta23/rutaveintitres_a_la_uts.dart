import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xidooalpha/pages/rutas.dart';
import 'package:xidooalpha/routes/ruta23/ruta23mapa.dart';


class Rutaveintitres_a_la_uts extends StatelessWidget {
  const Rutaveintitres_a_la_uts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta veintitres con sentido a la UTS',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // the current step
  int _currentStep = 0;


  // This function will be triggered when a step is tapped
  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  // This function will be called when the continue button is tapped
  _stepContinue() {
    _currentStep < 3 ? setState(() => _currentStep += 1) : null;
  }

  // This function will be called when the cancel button is tapped
  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
           IconButton(
            icon: Icon(
              FontAwesomeIcons.bus
            ),
            iconSize: 30,
            onPressed:(){
            },
          )
        ],
        title: const Text('Ruta 23 ➡ Directo a La UTS'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: FaIcon(FontAwesomeIcons.sign, size: 20),
                ),
                TextSpan(
                  text: " Sentido:",
                  style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: " UTS",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal)
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
          ),
          const Divider(
            thickness: 2,
            height: 30,
          ),
          Expanded(
            // the Stepper widget
            child: Stepper(
              currentStep: _currentStep,
              onStepTapped: (step) => _stepTapped(step),
              onStepContinue: _stepContinue,
              onStepCancel: _stepCancel,
              controlsBuilder: (context,_){
                return Row(
                  children: <Widget>[
                    TextButton(
                      onPressed: (){
                        _stepContinue();
                      },
                      child: const Text('Siguiente ruta'),
                    ),
                    TextButton(
                      onPressed: (){
                        _stepCancel();
                      },
                      child: const Text('Ruta anterior'),
                    ),
                  ],
                );
              },
              steps: [
                Step(
                  title: const Text('Centro'),
                  content: Column(
                    children: <Widget>[
                      Text('C. Alvaro Obregón 37, Centro.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Seguro'),
                  content: Column(
                    children: [
                      Text('C. Morelos, Jardines de San Pedro.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),  
                 Step(
                  title: const Text('Via Alta'),
                  content: Column(
                    children: <Widget>[
                      Text('Cam. a Mancera, Las Glorias.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),      
                Step(
                  title: const Text('Uts'),
                  content: Column(
                    children: [
                      Text('Av. Universidad Tecnológica No. 200, Ciudad Bajío.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
            child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Colors.black87,   
              
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ruta23mapa())
                );
              },
              child: Icon(Icons.arrow_back, color: Colors.white,),
            ),
           ),
          ),
        ],
      ),
    );
  }
}