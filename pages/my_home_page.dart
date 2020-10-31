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
            Image.network(
                'https://1.bp.blogspot.com/-4QgplXl-6j8/T_ucmd52VlI/AAAAAAAAAD8/NnS9y2kDURg/s1600/numerologia%2520(1).jpg',
                height: 200),
            Text(
                "Llena los siguientes datos para obtener tu urgencia unterior (un tipo de signo zodiacal numérico), tu tónica fundamental (lo que tienes que hacer para tener éxito en la vida) y otros datos más de importancia."),
            RaisedButton(
                child: Text(
                  "Empezar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
