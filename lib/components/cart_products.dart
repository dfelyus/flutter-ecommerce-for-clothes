import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProducts createState() => _CartProducts();
}

class _CartProducts extends State<CartProducts> {
  var Product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpg",
      "price": "150",
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "shoes",
      "picture": "images/products/hills1.jpg",
      "price": "110",
      "size": "7",
      "color": "blue",
      "quantity": 4
    },
    {
      "name": "Dress",
      "picture": "images/products/dress2.jpg",
      "price": "59",
      "size": "F",
      "color": "Black",
      "quantity": 3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (BuildContext context, int index) {
          return Single_product_cart(
            Product_on_the_cart[index]["name"],
            Product_on_the_cart[index]["picture"],
            Product_on_the_cart[index]["price"],
            Product_on_the_cart[index]["size"],
            Product_on_the_cart[index]["color"],
            Product_on_the_cart[index]["quantity"],
          );
        });
  }
}

class Single_product_cart extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_qty;

  Single_product_cart(
      this.cart_product_name,
      this.cart_product_picture,
      this.cart_product_price,
      this.cart_product_size,
      this.cart_product_color,
      this.cart_product_qty);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cart_product_picture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(cart_product_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 5.0, 12.0, 5.0),
                  child: Text(
                    cart_product_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text(
                    "Color",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_product_color,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_product_price}",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
