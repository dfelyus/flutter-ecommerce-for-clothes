import 'package:flutter/material.dart';
import 'package:untitled21/meteo/camera.dart';
import 'package:untitled21/meteo/quiz.dart';
import 'package:untitled21/meteo/weather.dart';

class Components {
  static Widget Mydrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.deepOrange, Colors.white])),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('./img/img.jpg'),
                radius: 50,
              ),
            ),
          ),
          Divider(
            color: Colors.deepOrange,
          ),
          ListTile(
            leading: Icon(
              Icons.account_balance,
              size: 30,
            ),
            title: Text(
              "Home",
              textScaleFactor: 2.4,
            ),
          ),
          Divider(
            color: Colors.deepOrange,
          ),
          ListTile(
            leading: Icon(
              Icons.ad_units_rounded,
              size: 30,
            ),
            title: Text(
              "Quiz",
              textScaleFactor: 2.4,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Quiz()));
            },
          ),
          Divider(
            color: Colors.deepOrange,
          ),
          ListTile(
              leading: Icon(
                Icons.camera_alt,
                size: 30,
              ),
              title: Text(
                "Camera",
                textScaleFactor: 2.4,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Camera()));
              }),
          ListTile(
              leading: Icon(
                Icons.center_focus_weak_sharp,
                size: 30,
              ),
              title: Text(
                "Weather",
                textScaleFactor: 2.4,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Weather()));
              }),
        ],
      ),
    );
  }

  static Myappbar() {
    return AppBar(
      title: Text(
        "My app",
        style: new TextStyle(
          color: Colors.limeAccent,
          fontStyle: FontStyle.italic,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.brown,
        ),
      ),
    );
  }
}
