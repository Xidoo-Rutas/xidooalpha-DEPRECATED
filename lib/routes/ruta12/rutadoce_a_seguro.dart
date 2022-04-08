// main.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xidooalpha/pages/rutas.dart';
import 'package:xidooalpha/routes/ruta12/ruta12mapa.dart';


class Rutadoce_a_seguro extends StatelessWidget {
  const Rutadoce_a_seguro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta diez con sentido estancias',
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
        title: const Text('Ruta 12'),
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
                  text: " Hospital General de Salamanca",
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
                  title: const Text('Conalep '),
                  content: Column(
                    children: [
                      Text('Ave. Conalep, San Rafael de Uruétaro.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Mercado'),
                  content: Column(
                    children: [
                      Text('Av. del Trabajo, San Gonzalo.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Cetis'),
                  content: Column(
                    children: <Widget>[
                      Text('Av Leona Vicario, los Rangeles.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Hospital General de Salamanca'),
                  content: Column(
                    children: [
                      Text('Av, de los deportes, deportivo.')
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
                  MaterialPageRoute(builder: (context) => Ruta12mapa())
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