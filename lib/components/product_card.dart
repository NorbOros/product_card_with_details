import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key}) : super(key: key);

  final Product _product = Product(
      name: 'Moisturizer',
      description: 'Oil balancing mask with some really long description',
      price: 11.99,
      imageUrl: 'assets/images/moisturizer.jpg');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        heightFactor: 0.5,
        widthFactor: 0.6,
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: DevlogieColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                // 'assets/images/moisturizer.jpg',
                _product.imageUrl,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(_product.name),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _product.description,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_product.price.toString()),
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
    );
  }
}
