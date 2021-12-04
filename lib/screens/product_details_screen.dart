import 'package:devlogie_product_card/components/custom_app_bar.dart';
import 'package:devlogie_product_card/components/product_sliding_up_panel.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product-details-screen';

  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ProductSlidingUpPanel(),
    );
  }
}
