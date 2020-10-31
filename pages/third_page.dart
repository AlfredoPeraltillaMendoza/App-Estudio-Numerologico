import 'package:flutter/material.dart';
import 'package:proyecto/pages/second_page.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  dynamic nameValue, lastNameValue, anacValue, mnacValue, dnacValue;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingrese sus datos:"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "Nombre: "),
                  keyboardType: TextInputType.name,
                  onSaved: (value) {
                    nameValue = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llena este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Apellido: "),
                  keyboardType: TextInputType.name,
                  onSaved: (value) {
                    lastNameValue = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llena este campo";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Año de Nacimiento: "),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    anacValue = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llena este campo";
                    } else if (value.length > 4 || value.length < 3) {
                      return "Año incorrecto";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Mes de Nacimiento: "),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    mnacValue = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llena este campo";
                    } else if (value.length < 1) {
                      return "Mes incorrecto";
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Día Nacimiento: "),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    dnacValue = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llena este campo";
                    } else if (value.length < 1) {
                      return "Mes incorrecto";
                    }
                  },
                ),
                RaisedButton(
                    child: Text('Calcular'),
                    onPressed: () {
                      _showSecondPage(context);
                    }),
              ],
            ),
          )),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/second",
          arguments: SecondPageArguments(
              name: this.nameValue,
              lastName: this.lastNameValue,
              anac: this.anacValue,
              mnac: this.mnacValue,
              dnac: this.dnacValue));
    }
  }
}
