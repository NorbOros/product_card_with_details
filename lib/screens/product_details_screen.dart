import 'package:devlogie_product_card/components/product_sliding_up_panel.dart';
import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/screens/shopping_bag_screen.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product-details-screen';

  final Product product;

  const ProductDetailsScreen(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: DevlogieColors.black,
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ShoppingBagScreen.routeName);
              },
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: DevlogieColors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: ProductSlidingUpPanel(product: product),
    );
  }
}
