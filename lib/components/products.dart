import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled21/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Products();
  }
}

class _Products extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpg",
      "old_price": "200",
      "price": "150"
    },
    {
      "name": "red dress",
      "picture": "images/products/dress1.jpg",
      "old_price": "300",
      "price": "250",
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpg",
      "old_price": "150",
      "price": "110",
    },
    {
      "name": "pants",
      "picture": "images/products/pants2.jpg",
      "old_price": "220",
      "price": "200",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
              productList[index]["name"],
              productList[index]["picture"],
              productList[index]["old_price"],
              productList[index]["price"]);
        });
  }
}

class Single_product extends StatelessWidget {
  var product_name;
  var product_picture;
  var product_old_price;
  var product_price;

  Single_product(this.product_name, this.product_picture,
      this.product_old_price, this.product_price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                    this.product_name,
                    this.product_price,
                    this.product_old_price,
                    this.product_picture))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    "\$$product_price",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text(
                    "\$$product_old_price",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
