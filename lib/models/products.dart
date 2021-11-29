import 'package:devlogie_product_card/models/product.dart';

class Products {
  final List<Product> _products = [
    Product(
        id: 'id_1',
        name: 'Moisturizer',
        description: 'Oil balancing mask',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg'),
    Product(
        id: 'id_2',
        name: 'Moisturizer',
        description: 'Oil balancing mask',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg'),
    Product(
        id: 'id_3',
        name: 'Moisturizer',
        description: 'Oil balancing mask',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg'),
    Product(
        id: 'id_4',
        name: 'Moisturizer',
        description: 'Oil balancing mask',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg'),
    Product(
        id: 'id_5',
        name: 'Moisturizer',
        description: 'Oil balancing mask',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg'),
    Product(
        id: 'id_6',
        name: 'Moisturizer',
        description: 'Oil balancing mask',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg'),
    Product(
        id: 'id_7',
        name: 'Moisturizer',
        description: 'Oil balancing mask',
        price: 11.99,
        currency: '\$',
        imageUrl: 'assets/images/moisturizer.jpg')
  ];

  List<Product> get products {
    return _products;
  }
}
