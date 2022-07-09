import 'package:flutter/material.dart';
import 'package:untitled21/meteo/Components.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: Components.Mydrawer(context), appBar: Components.Myappbar()),
    );
  }
}
