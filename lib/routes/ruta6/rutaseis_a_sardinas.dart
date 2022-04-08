import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xidooalpha/pages/rutas.dart';
import 'package:xidooalpha/routes/ruta6/ruta6mapa.dart';


class Rutaseis_a_sardinas extends StatelessWidget {
  const Rutaseis_a_sardinas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta seis con sentido a sardinas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: const Text('Ruta 6'),
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
                  text: " Sardinas",
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
                  title: const Text('Ecoparque'),
                  content: Column(
                    children: [
                      Text('Irapuato 201-211, Jardines de Guanajuato.')
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
                    children: <Widget>[
                      Text('Sanchez Torrado 423B, Centro.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Walmart '),
                  content: Column(
                    children: [
                      Text('Blvd. Manuel J. Clouthier, Aztlan.')
                    ],
                  ),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.disabled
                      : StepState.complete,
                ),
                Step(
                  title: const Text('Sardinas'),
                  content: Column(
                    children: [
                      Text('Calle 5 de Mayo, Centro.')
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
                  MaterialPageRoute(builder: (context) => Ruta6mapa())
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