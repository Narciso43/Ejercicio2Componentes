import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);
  final opciones = const ['Super mario', 'metal Slu', 'Sonic'];

  @override
  Widget build(BuildContext context) {
    //El scaffold es toda la pantalla.
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista view 1'),
      ),
      body: ListView(
        children: [
          //map metodo map
          //... define la definicion de poner un dato por uno.
          ...opciones
              .map((elemento) => ListTile(
                    title: Text(elemento),
                    trailing: const Icon(Icons.arrow_back_ios_sharp),
                  ))
              .toList(),
          const Divider(),
          /*Text('Elemento 1'),
          ListTile(
            title: Text('Encabezado'),
            trailing: Icon(Icons.arrow_back_ios_sharp),
          )*/
        ],
      ),
    );
  }
}
