import 'package:flutter/material.dart';
import 'package:untitled21/meteo/Components.dart';
import 'package:untitled21/meteo/weatherDetail.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Components.Myappbar(),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration:
                    InputDecoration(hintText: "Enter the name of the town..."),
                onChanged: (value) {
                  this.city = value.toString();
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WeatherDetail(this.city)));
                },
                child: Text(
                  "Get wheather",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
