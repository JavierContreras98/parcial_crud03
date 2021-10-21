import 'package:flutter/material.dart';
import 'package:parcial_crud03/pages/Agregar/agregar_vuelo.dart';
import 'package:parcial_crud03/pages/Listas/listas_vuelos.dart';

class VuelosPage extends StatefulWidget {
  VuelosPage({Key? key}) : super(key: key);

  @override
  _VuelosPageState createState() => _VuelosPageState();
}

class _VuelosPageState extends State<VuelosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Parcial 03 CRUD Aeropuerto'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgregarVueloPage(),
                  ),
                )
              },
              child: Text('Agregar', style: TextStyle(fontSize: 20.0)),
              style: ElevatedButton.styleFrom(primary: Colors.teal),
            )
          ],
        ),
      ),
      //body: ListaClientePage(),
    );
  }
}
