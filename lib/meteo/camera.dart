import 'package:flutter/material.dart';
import 'package:untitled21/meteo/Components.dart';
import 'package:untitled21/meteo/main.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Components.Myappbar(),
        body: ListView(
          children: <Widget>[
            Icon(
              Icons.camera_alt_outlined,
              size: 25,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            )
          ],
        ));
  }
}
