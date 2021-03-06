import 'package:flutter/material.dart';
import 'package:proyecto/pages/my_home_page.dart';
import 'package:proyecto/pages/second_page.dart';
import 'package:proyecto/pages/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.brown[300],
        accentColor: Colors.blueGrey[100],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      title: 'Material App',

      //home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => MyHomePage(),
        "/second": (BuildContext context) => SecondPage(),
        "/third": (BuildContext context) => ThirdPage(),
      },
    );
  }
}
