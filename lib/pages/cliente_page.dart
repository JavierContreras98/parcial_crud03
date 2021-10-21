import 'package:flutter/material.dart';
import 'package:parcial_crud03/pages/Agregar/agregar_cliente.dart';
import 'package:parcial_crud03/pages/Listas/listas_clientes.dart';

class ClientePage extends StatefulWidget {
  ClientePage({Key? key}) : super(key: key);

  @override
  _ClientePageState createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
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
                    builder: (context) => AgregarClientePage(),
                  ),
                )
              },
              child: Text('Agregar', style: TextStyle(fontSize: 20.0)),
              style: ElevatedButton.styleFrom(primary: Colors.teal),
            )
          ],
        ),
      ),
      body: ListaClientePage(),
    );
  }
}
