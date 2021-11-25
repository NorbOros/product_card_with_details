import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ListTile(
              autofocus: true,
              leading: Image.asset(
                'assets/images/moisturizer.jpg',
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
            );
          },
          itemCount: 5),
    );
  }
}
