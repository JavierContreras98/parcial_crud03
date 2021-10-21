import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AgregarVueloPage extends StatefulWidget {
  AgregarVueloPage({Key? key}) : super(key: key);

  @override
  _AgregarVueloPageState createState() => _AgregarVueloPageState();
}

class _AgregarVueloPageState extends State<AgregarVueloPage> {
  final _formKey = GlobalKey<FormState>();
  
  var disponibilidad = "";
  var tipovuelo = "";
  var avioncod = "";
  var destinos = "";
  
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final disponibilidadController = TextEditingController();
  final tipovueloController = TextEditingController();
  final avioncodController = TextEditingController();
  final destinosController = TextEditingController();
  


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    disponibilidadController.dispose();
    tipovueloController.dispose();
    avioncodController.dispose();
    destinosController.dispose();
    super.dispose();
  }

  clearText() {
    disponibilidadController.dispose();
    tipovueloController.dispose();
    avioncodController.dispose();
    destinosController.dispose();
  }

  // Adding Student
  CollectionReference vuelos =
      FirebaseFirestore.instance.collection('vuelos');

  Future<void> addUser() {
    return vuelos
        .add({'disponibilidad': disponibilidad,'tipo_vuelo': tipovuelo, 'avion_cod': avioncod,'destinos':destinos})
        .then((value) => print('Vuelo nuevo agregado'))
        .catchError((error) => print('Fallo al agregar vuelo: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Text("Agregar Nuevo Vuelo"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              //campo cedula
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Disponibilidad: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: disponibilidadController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ingresar numero de disponibilidad porfavor';
                    }
                    return null;
                  },
                ),
              ),
              //campo nombre
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Tipo_vuelo: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: tipovueloController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ingresar tipo de vuelo por favor';
                    }
                    return null;
                  },
                ),
              ),
              //campo apellido
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Codigo de avion: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: avioncodController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ingresar un codigo de avion porfavor';
                    }
                    return null;
                  },
                ),
              ),
              //fecha de nacimiento
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Desitnos ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: destinosController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ingresar destino porfavor';
                    }
                    return null;
                  },
                ),
              ),
              //campo sexo
              
              
             
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            disponibilidad = disponibilidadController.text;
                            tipovuelo=tipovueloController.text;
                            avioncod=avioncodController.text;
                            destinos=destinosController.text;
                            addUser();
                            clearText();
                          });
                        }
                      },
                      child: Text(
                        'Registrar',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {clearText()},
                      child: Text(
                        'Reiniciar',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.teal.shade100),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
