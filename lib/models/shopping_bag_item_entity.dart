import 'package:devlogie_product_card/models/product.dart';
import 'package:flutter/cupertino.dart';

class ShoppingBagItemEntity {
  final Product _product;
  int _quantity;

  ShoppingBagItemEntity({required Product product, required int quantity})
      : _product = product,
        _quantity = quantity;

  int get quantity => _quantity;

  Product get product => _product;

  void incrementQuantity(final int quantity) {
    _quantity = _quantity + quantity;
  }

  void decrementQuantity(final int quantity) {
    if (_quantity > quantity) {
      _quantity = _quantity - quantity;
    } else {
      _quantity = 1;
    }
  }

  @override
  operator ==(other) =>
      other is ShoppingBagItemEntity && other._product == product;

  @override
  int get hashCode => hashValues(_product, product, _quantity, quantity);
}
