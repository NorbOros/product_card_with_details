import 'package:devlogie_product_card/components/shopping_bag_item.dart';
import 'package:devlogie_product_card/providers/shopping_bag_provider.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 

class ShoppingBagScreen extends StatelessWidget {
  static const String routeName = 'shopping-bag';
  const ShoppingBagScreen({Key? key}) : super(key: key);

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
      body: Consumer<ShoppingBagProvider>(
        builder: (_, _shoppingBag, child) => ListView.separated(
            itemBuilder: (context, index) {
              return ShoppingBagItem(
                  shoppingBagItemEntity:
                      _shoppingBag.shoppingBagItemList[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 10,
              );
            },
            itemCount: _shoppingBag.shoppingBagItemList.length),
      ),
    );
  }
}
