import 'package:devlogie_product_card/components/shopping_bag_item.dart';
import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/models/products.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

class ShoppingBagScreen extends StatefulWidget {
  static const String routeName = 'shopping-bag';

  const ShoppingBagScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingBagScreen> createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> {
  final List<Product> _products = Products().products;

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
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ShoppingBagItem(_products[index]);
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10,
            );
          },
          itemCount: _products.length),
    );
  }
}
