import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:untitled21/components/horizontal_listview.dart';
import 'package:untitled21/components/products.dart';
import 'package:untitled21/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget images_caroussel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpg'),
          AssetImage('images/w3.jpg'),
          AssetImage('images/w4.jpg'),
        ],
        autoplay: false,
        dotSize: 5.0,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "E_commerceApp",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.deepOrangeAccent])),
              accountName: Text('Elyus77'),
              accountEmail: Text('dfelyus@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage('img/img.jpg'),
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text('Home page'),
                onTap: () {},
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                ),
                title: Text('My Account'),
                onTap: () {},
              ),
            ),
            InkWell(
              child: ListTile(
                  leading: Icon(
                    Icons.shopping_basket,
                  ),
                  title: Text('My Orders'),
                  onTap: () {}),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Category'),
                onTap: () {},
              ),
            ),
            InkWell(
              child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                  ),
                  title: Text('Favorites'),
                  onTap: () {}),
            ),
            Divider(
              color: Colors.red,
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text('Setting'),
                onTap: () {},
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
                title: Text('About'),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          images_caroussel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Catégories',
            ),
          ),
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Recent products",
            ),
          ),
          Container(
            height: 220.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
