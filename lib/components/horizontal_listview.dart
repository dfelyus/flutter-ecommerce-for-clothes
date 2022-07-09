import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_locator: 'images/cats/tshirt.png',
            image_caption: 'shirt',
          ),
          Category(
            image_locator: 'images/cats/shoe.png',
            image_caption: 'shoe',
          ),
          Category(
            image_locator: 'images/cats/jeans.png',
            image_caption: 'pants',
          ),
          Category(
            image_locator: 'images/cats/informal.png',
            image_caption: 'informal',
          ),
          Category(
            image_locator: 'images/cats/formal.png',
            image_caption: 'formal',
          ),
          Category(
            image_locator: 'images/cats/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_locator: 'images/cats/accessories.png',
            image_caption: 'accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  var image_locator;
  var image_caption;
  Category({this.image_locator, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_locator.toString(),
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption.toString(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
