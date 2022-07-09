import 'package:flutter/material.dart';
import 'package:untitled21/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _Cart createState() => _Cart();
}

class _Cart extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "Cart",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text(
                  "Total",
                ),
                subtitle: Text(
                  "\$230",
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Check out",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
