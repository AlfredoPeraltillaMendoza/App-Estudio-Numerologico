import 'package:flutter/material.dart';
import 'dart:math';

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
            Text("Nombre: ${arguments.name}"),
            Text("Apellido: ${arguments.lastName}"),
            Text("Año de Nacimiento: ${arguments.anac}"),
            Text("Mes de Nacimiento: ${arguments.mnac}"),
            Text("Dia de nacimiento: ${arguments.dnac}"),
            Text("Tonica del día: "),
            Text("4"),
            Text("Urgencia interior: "),
            Text("8"),
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

dynamic tonicaDia(int tonicaFundamental, int diaHoy, int mesHoy, int anoHoy) {
  int unidad = 10, decena, centena, millar, tonicaDia;
  diaHoy = 30;
  mesHoy = 12;
  anoHoy = 2020;
  while (diaHoy >= 10) {
    unidad = diaHoy % 10; //calculo la unidad del dia
    decena = (diaHoy - unidad); //calculo la decena del día
    diaHoy = unidad + decena; //summo la unidad y la decena
  }

  while (mesHoy >= 10) {
    unidad = mesHoy % 10; //calculo la unidad del mes
    decena = (mesHoy - unidad); //calculo la decena del mes
    mesHoy = unidad + decena; //summo la unidad y la decena
  }

  while (anoHoy >= 10) {
    unidad = anoHoy % 10; //calculo la unidad del mes
    decena = ((anoHoy - unidad)); //calculo la decena del año
    centena = ((anoHoy - anoHoy)); //calculo la centena del año;
    millar = anoHoy - anoHoy; //calculo el millar del año
    anoHoy = unidad + decena + centena + millar;
  }

  tonicaDia = diaHoy + mesHoy + anoHoy; //calculamos la suma de los tres datos

  while (tonicaDia >= 10) {
    //hallamos su suma cabalistica
    unidad = tonicaDia % 10;
    decena = (tonicaDia - unidad);
    tonicaDia = unidad + decena;
  }

  tonicaDia = tonicaDia + tonicaFundamental; //añadimos la tonica fundamental

  while (tonicaDia >= 10) {
    //hallamos su suma cabalistica
    unidad = tonicaDia % 10;
    decena = (tonicaDia - unidad);
    tonicaDia = unidad + decena;
  } //aqui termina todo esta es su tonica del día de hoy

  return tonicaDia;
}

dynamic urgenciainterior(int ano, int mes, int dia) {
  dynamic u = ano;
  dynamic v = mes;
  dynamic b = dia;

  dynamic urgenciainterior = u + v + b - 10;

  Random random = new Random();
  dynamic rr = random.nextInt(10);
  urgenciainterior = rr;
  String yy = rr.toString();
  return yy;
}
