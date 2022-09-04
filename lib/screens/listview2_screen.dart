import 'package:flutter/material.dart';

class Listvie2wScreen extends StatelessWidget {
  const Listvie2wScreen({Key? key}) : super(key: key);
  final opciones = const ['Super mario', 'metal Slu', 'Sonic'];

  @override
  Widget build(BuildContext context) {
    //El scaffold es toda la pantalla.
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista view 2'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.separated(
        itemCount: opciones.length,
        itemBuilder: ((context, i) => ListTile(
              title: Text(opciones[i]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.redAccent,
              ),
              onTap: () {
                final juegoTitulo = opciones[i];
                print('Titulo Juegos:$juegoTitulo');
              },
            )),
        // _ cuando no se usa  el parametro
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
