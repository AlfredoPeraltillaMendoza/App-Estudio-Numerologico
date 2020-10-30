import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estudio Numerológico"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
                "Llena los siguientes datos para obtener tu urgencia unterior (un tipo de signo zodiacal numérico), tu tónica fundamental (lo que tienes que hacer para tener éxito en la vida) y otros datos más de importancia."),
            Image.network('https://www.samaelgnosis.net/cabala/tarot38.jpg'),
            RaisedButton(
                child: Text("Empezar"),
                onPressed: () {
                  _showThirdPage(context);
                }),
          ],
        ),
      ),
    );
  }

  void _showThirdPage(BuildContext context) {
    Navigator.of(context).pushNamed("/third");
  }
}
