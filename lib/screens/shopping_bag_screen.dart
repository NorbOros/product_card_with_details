import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

class ShoppingBagScreen extends StatelessWidget {
  static const String routeName = 'shopping-bag';

  ShoppingBagScreen({Key? key}) : super(key: key);

  final Product _product = Product(
      name: 'Moisturizer',
      description: 'Oil balancing mask with some really long description',
      price: 11.99,
      currency: '\$',
      imageUrl: 'assets/images/moisturizer.jpg');

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
            return FractionallySizedBox(
              heightFactor: 0.2,
              widthFactor: 0.6,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: DevlogieColors.white,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10,
            );
          },
          itemCount: 5),
    );
  }

  void _navigateTo(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProductDetailsScreen();
    }));
  }
}
