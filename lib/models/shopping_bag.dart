import 'package:devlogie_product_card/models/product.dart';

class ShoppingBag {
  List<Product> _products = [];

  List<Product> get products {
    return _products;
  }

  set products(final List<Product> products) {
    _products = products;
  }

  void addProductToShoppingBag(final Product product) {
    _products.add(product);
  }
}
