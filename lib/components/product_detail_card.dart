import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({Key? key, required title})
      : _title = title,
        super(key: key);

  final String _title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: DevlogieColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 80,
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: AssetImage('assets/icons/leaf.png'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          Text(
            _title,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
