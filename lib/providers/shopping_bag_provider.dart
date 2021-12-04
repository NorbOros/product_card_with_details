import 'package:devlogie_product_card/models/shopping_bag_item_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ShoppingBagProvider with ChangeNotifier {
  final List<ShoppingBagItemEntity> _shoppingBagItemList = [];

  List<ShoppingBagItemEntity> get shoppingBagItemList {
    return _shoppingBagItemList;
  }

  void add(final ShoppingBagItemEntity newShoppingBagItem) {
    if (_shoppingBagItemList.contains(newShoppingBagItem)) {
      _shoppingBagItemList
          .firstWhere((element) => element == newShoppingBagItem)
          .incrementQuantity(newShoppingBagItem.quantity);
    } else {
      shoppingBagItemList.add(newShoppingBagItem);
    }
    notifyListeners();
  }

  void incrementQuiantity(final String productId, final int quantity) {
    _getShoppingBagItemEntity(productId).incrementQuantity(quantity);
    notifyListeners();
  }

  void decrementQuantity(final String productId, final int quantity) {
    _getShoppingBagItemEntity(productId).decrementQuantity(quantity);
    notifyListeners();
  }

  void removeItemFromShoppingBag(final String productId) {
    _shoppingBagItemList.remove(_getShoppingBagItemEntity(productId));
    notifyListeners();
  }

  ShoppingBagItemEntity _getShoppingBagItemEntity(final String productId) {
    return _shoppingBagItemList
        .firstWhere((element) => element.product.id == productId);
  }
}
