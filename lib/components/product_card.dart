import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/models/products.dart';
import 'package:devlogie_product_card/providers/shopping_bag_provider.dart';
import 'package:devlogie_product_card/models/shopping_bag_item_entity.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key}) : super(key: key);

  final Product _product = Products().products[0];

  @override
  Widget build(BuildContext context) {
    final ShoppingBagProvider _shoppingBag =
        Provider.of<ShoppingBagProvider>(context, listen: false);
    return Center(
      child: FractionallySizedBox(
        heightFactor: 0.6,
        widthFactor: 0.7,
        child: GestureDetector(
          onTap: () => _navigateTo(context),
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: _product.id,
                  child: Image.asset(
                    _product.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    _product.name,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    _product.details,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _product.currency + _product.price.toString(),
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: DevlogieColors.black,
                              shape: const StadiumBorder(),
                              fixedSize: const Size(45, 40),
                            ),
                            child: const Icon(Icons.shopping_bag_outlined),
                            onPressed: () => addProductToShoppingBag(
                                _shoppingBag, _product, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addProductToShoppingBag(final ShoppingBagProvider shoppingBag,
      final Product product, final int quantity) {
    shoppingBag
        .add(ShoppingBagItemEntity(product: product, quantity: quantity));
  }

  void _navigateTo(final BuildContext context) {
    Navigator.of(context)
        .pushNamed(ProductDetailsScreen.routeName, arguments: _product);
  }
}
