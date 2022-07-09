import 'package:flutter/material.dart';
import 'package:untitled21/main.dart';
import 'package:untitled21/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  var product_details_name;
  var product_details_new_price;
  var product_details_old_price;
  var product_details_picture;

  ProductDetails(this.product_details_name, this.product_details_new_price,
      this.product_details_old_price, this.product_details_picture);

  @override
  State<StatefulWidget> createState() {
    return _ProductDetails();
  }
}

class _ProductDetails extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'E_commerceApp',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      //***************************  HUITEME PARTIE*************************
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_details_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_details_old_price}",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            //fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_details_new_price}",
                          style: TextStyle(
                            color: Colors.grey,
                            //decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'Size',
                          ),
                          content: Text(
                            'Choose the size',
                          ),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                'Close',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'Color',
                          ),
                          content: Text(
                            'Choose the color',
                          ),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                'Close',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'Quantity',
                          ),
                          content: Text(
                            'Choose the Quantity',
                          ),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                'Close',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text(
                    "Buy now",
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Products details"),
            subtitle: Text(
              "processing is an emerging field thanks to the surge in of peoples emotions from images, and many other applications Consider the use of image processing by a self-driving vehicle The vehicle needs to make decisions in as close to real time as possible to ensure the best possible accident-free driving. A delay in the response of the AI model running the car could lead to catastrophic consequences Several techniques and algorithms have been developed for fast",
              maxLines: 4,
            ),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name :",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  widget.product_details_name,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Products brand : ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Brand X",
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Products condition : ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "New",
                ),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Similar products :",
            ),
          ),
          Container(
            height: 210.0,
            child: SimilarProduct(),
          ),
        ],
      ),
    );
  }
}

class SimilarProduct extends StatefulWidget {
  @override
  _SimilarProduct createState() => _SimilarProduct();
}

class _SimilarProduct extends State<SimilarProduct> {
  var productList = [
    {
      "name": "hill",
      "picture": "images/products/hills1.jpg",
      "old_price": "150",
      "price": "110"
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpg",
      "old_price": "110",
      "price": "59"
    },
    {
      "name": "hills2",
      "picture": "images/products/hills2.jpg",
      "old_price": "180",
      "price": "115"
    },
    {
      "name": "pants2",
      "picture": "images/products/pants2.jpg",
      "old_price": "300",
      "price": "250"
    },
    {
      "name": "skt2",
      "picture": "images/products/skt2.jpg",
      "old_price": "280",
      "price": "210"
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
          return SimilarSingleProducts(
            productList[index]['name'],
            productList[index]['picture'],
            productList[index]['old_price'],
            productList[index]['price'],
          );
        });
  }
}

class SimilarSingleProducts extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  SimilarSingleProducts(
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: product_name,
      child: Material(
        child: InkWell(
          //***************************  SEPTIEME PARTIE*************************
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                    //****envoye des information vers la page des details
                    product_name,
                    product_price,
                    product_old_price,
                    product_picture,
                  ))),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              //color: Colors.white,
              //****affichage des infos en dessous de l'image***
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      product_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                  Text(
                    "\$${product_price}",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  )
                ],
              ),
            ),
            child: Image.asset(
              product_picture,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ));
  }
}
