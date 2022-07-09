import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;

class WeatherDetail extends StatefulWidget {
  String city_detail = "";
  WeatherDetail(this.city_detail);
  @override
  _WeatherDetailState createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  var tabData = [];
  final url = "https://jsonplaceholder.typicode.com/users";
  void printData() {
    print("Welcome to header");
  }

  void getApiData() async {
    try {
      print("==================");
      final response = await http.get(Uri.parse(url));
      final dataJson = jsonDecode(response.body) as List;
      print("dataJson :");
      print(dataJson);
      setState(() {
        tabData = dataJson;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    printData();
    getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Wheather of city ${widget.city_detail}",
        ),
      ),
      body: ListView.builder(
          itemCount: this.tabData.length,
          itemBuilder: (context, i) {
            final returnData = this.tabData[i];
            return Text(
                " Name : ${returnData['name']}\n email : ${returnData['email']} \n username : ${returnData['username']} \n\n");
          }),
    );
  }
}

class Metheo {
  final String name, email, userName;
  Metheo(this.name, this.email, this.userName);
}
