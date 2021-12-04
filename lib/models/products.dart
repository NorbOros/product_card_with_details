import 'package:devlogie_product_card/models/product.dart';
import 'package:flutter/cupertino.dart';

class Products {
  final List<Product> _products = [
    Product(
        id: UniqueKey().toString(),
        name: 'Moisturizer',
        description:
            'Some really informative descreption about this awesome product you should buy.',
        details: 'Size: 7.60 fl oz / 205 ml',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg'),
  ];

  List<Product> get products {
    return _products;
  }
}
