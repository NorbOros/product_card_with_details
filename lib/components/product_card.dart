import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key}) : super(key: key);

  final Product _product = Product(
      name: 'Moisturizer',
      description: 'Oil balancing mask with some really long description',
      currency: '\$',
      price: 11.99,
      imageUrl: 'assets/images/moisturizer.jpg');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        heightFactor: 0.5,
        widthFactor: 0.6,
        child: GestureDetector(
          onTap: () => _navigateTo(context, ProductDetailsScreen.routeName),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: DevlogieColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  _product.imageUrl,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(_product.name,
                      style: Theme.of(context).textTheme.headline1),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _product.description,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _product.currency + _product.price.toString(),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_bag_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _navigateTo(BuildContext context, String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }
}
