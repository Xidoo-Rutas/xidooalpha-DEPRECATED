import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xidooalpha/pages/rutas.dart';
import 'package:xidooalpha/routes/ruta19/ruta19mapa.dart';


class Rutadiecinueve_a_las_estancias extends StatelessWidget {
  const Rutadiecinueve_a_las_estancias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta diecinueve con sentido a las estancias',
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
        title: const Text('Ruta 19'),
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
                  text: " Estancias",
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
                  title: const Text('La Luz'),
                  content: Column(
                    children: [
                      Text('C. Morelos 100, Las Margaritas, La Luz.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Infonavit 1'),
                  content: Column(
                    children: [
                      Text('Av. Comunicación Nte. Renovacion.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                 Step(
                  title: const Text('San Javier'),
                  content: Column(
                    children: [
                      Text('San Agustín, San Javier.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Estancias '),
                  content: Column(
                    children: [
                      Text('Ramón López Díaz 16, Las Estancias.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                )
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
                  MaterialPageRoute(builder: (context) => Ruta19mapa())
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