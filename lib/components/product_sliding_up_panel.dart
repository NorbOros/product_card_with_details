import 'package:devlogie_product_card/components/product_counter.dart';
import 'package:devlogie_product_card/components/product_rating_bar.dart';
import 'package:devlogie_product_card/components/sliding_up_panel_body.dart';
import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/providers/shopping_bag_provider.dart';
import 'package:devlogie_product_card/models/shopping_bag_item_entity.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductSlidingUpPanel extends StatelessWidget {
  ProductSlidingUpPanel({Key? key}) : super(key: key);

  int _productQuantity = 1;

  @override
  Widget build(BuildContext context) {
    final Product _product =
        ModalRoute.of(context)!.settings.arguments as Product;
    final Size _size = MediaQuery.of(context).size;
    final ShoppingBagProvider _shoppingBag =
        Provider.of<ShoppingBagProvider>(context, listen: false);

    return SlidingUpPanel(
      panel: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _product.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const ProductRatingBar(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _product.details,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  '(123 Reviews)',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _product.currency + _product.price.toString(),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 140,
                    child: ProductCounter(productQuantity: productQuantity),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: DevlogieColors.black,
                      shape: const StadiumBorder(),
                      fixedSize: const Size(45, 40),
                    ),
                    child: const Icon(Icons.shopping_bag_outlined),
                    onPressed: () => addProductToShoppingBag(
                        _shoppingBag, _product, _productQuantity),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                _product.description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
      minHeight: _size.height * 0.3,
      maxHeight: _size.height * 0.5,
      body: SlidingUpPanelBody(_product),
      borderRadius: borderRadius,
    );
  }

  void addProductToShoppingBag(final ShoppingBagProvider shoppingBag,
      final Product product, final int quantity) {
    shoppingBag
        .add(ShoppingBagItemEntity(product: product, quantity: quantity));
  }

  void productQuantity(final int productQuantity) {
    _productQuantity = productQuantity;
  }
}

BorderRadius get borderRadius {
  return const BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );
}
