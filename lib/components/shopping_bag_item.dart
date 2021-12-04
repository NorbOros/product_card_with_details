import 'package:devlogie_product_card/models/shopping_bag_item_entity.dart';
import 'package:devlogie_product_card/providers/shopping_bag_provider.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingBagItem extends StatelessWidget {
  const ShoppingBagItem(
      {Key? key, required ShoppingBagItemEntity shoppingBagItemEntity})
      : _shoppingBagItemEntity = shoppingBagItemEntity,
        super(key: key);

  final ShoppingBagItemEntity _shoppingBagItemEntity;

  @override
  Widget build(BuildContext context) {
    final ShoppingBagProvider _shoppingBagProvider =
        Provider.of<ShoppingBagProvider>(context);

    return Dismissible(
      key: ValueKey<String>(_shoppingBagItemEntity.product.id),
      onDismissed: (DismissDirection direction) => _shoppingBagProvider
          .removeItemFromShoppingBag(_shoppingBagItemEntity.product.id),
      direction: DismissDirection.endToStart,
      background: Card(
        color: DevlogieColors.lightRed,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.delete_outline,
              color: DevlogieColors.white,
              size: 35,
            ),
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () => _navigateTo(context, ProductDetailsScreen.routeName),
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: _shoppingBagItemEntity.product.id,
                  child: Image.asset(
                    _shoppingBagItemEntity.product.imageUrl,
                    height: 120,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          _shoppingBagItemEntity.product.name,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      Text(
                        _shoppingBagItemEntity.product.details,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        _shoppingBagItemEntity.product.currency +
                            _shoppingBagItemEntity.product.price.toString(),
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () =>
                              _shoppingBagProvider.decrementQuantity(
                                  _shoppingBagItemEntity.product.id, 1),
                          icon: const Icon(Icons.remove),
                          hoverColor: Colors.red,
                        ),
                        Text(
                          _shoppingBagItemEntity.quantity.toString(),
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        IconButton(
                          onPressed: () =>
                              _shoppingBagProvider.incrementQuiantity(
                                  _shoppingBagItemEntity.product.id, 1),
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateTo(final BuildContext context, final String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }
}
