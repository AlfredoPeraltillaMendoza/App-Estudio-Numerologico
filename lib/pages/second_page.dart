import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              arguments.name,
            ),
            Text("Nombre: ${arguments.lastName}"),
            Text("Apellido: ${arguments.lastName}"),
            Text("Año de Nacimiento: ${arguments.anac}"),
            Text("Mes de Nacimiento: ${arguments.mnac}"),
            Text("Dia de nacimiento: ${arguments.dnac}"),
          ],
        ),
      ),
    );
  }
}

class SecondPageArguments {
  dynamic name, lastName, anac, mnac, dnac;

  SecondPageArguments(
      {this.name, this.lastName, this.anac, this.mnac, this.dnac});
}
