import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key}) : super(key: key);

  final Product _product = Product(
      name: 'Moisturizer',
      description: 'Oil balancing mask with some really long description',
      price: 11.99,
      currency: '\$',
      imageUrl: 'assets/images/moisturizer.jpg');

  void addProductToShoppingBag(final Product product) {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        heightFactor: 0.5,
        widthFactor: 0.6,
        child: GestureDetector(
          onTap: () => _navigateTo(context),
          child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 8,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              color: DevlogieColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'product-pic-1',
                  child: Image.asset(
                    _product.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    _product.name,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    _product.description,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _product.currency + _product.price.toString(),
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: DevlogieColors.black,
                              elevation: 8,
                              shape: const StadiumBorder(),
                              fixedSize: const Size(45, 40),
                            ),
                            child: const Icon(Icons.shopping_bag_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProductDetailsScreen();
    }));
  }
}
