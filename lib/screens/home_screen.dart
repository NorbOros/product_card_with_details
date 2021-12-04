import 'package:devlogie_product_card/components/custom_app_bar.dart';
import 'package:devlogie_product_card/components/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: ProductCard(),
      ),
    );
  }
}
