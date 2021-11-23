import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text('Shopping bag screen'),
      ),
    );
  }
}
