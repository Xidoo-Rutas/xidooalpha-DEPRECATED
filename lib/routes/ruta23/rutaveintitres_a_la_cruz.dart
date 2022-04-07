import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xidooalpha/pages/rutas.dart';


class Rutaveintitres_a_la_cruz extends StatelessWidget {
  const Rutaveintitres_a_la_cruz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta veintitres con sentido a la cruz',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
        title: const Text('Ruta veintitres'),
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
                  text: "La luz",
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
              steps: [
                // The first step: Name
                Step(
                  title: const Text('Parada Estancias'),
                  content: Column(
                    children: [
                      Text('Estancias encantadas con esquina boulevard San Pedro')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('San Pedro'),
                  content: Column(
                    children: [
                      Text('Esquina San Xavier con Esquina Rinconada San Marcos')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                // The third step: Verify phone number
                Step(
                  title: const Text('Seguro Zona Centro'),
                  content: Column(
                    children: <Widget>[
                      Text('Zona Centro, esquina con el seguro IMMS')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('San Pedro'),
                  content: Column(
                    children: [
                      Text('Esquina San Xavier con Esquina Rinconada San Marcos')
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
        ],
      ),
    );
  }
}