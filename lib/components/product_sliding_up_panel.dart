import 'package:devlogie_product_card/components/sliding_up_panel_body.dart';
import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductSlidingUpPanel extends StatefulWidget {
  const ProductSlidingUpPanel({
    Key? key,
    required Product product,
  })  : _product = product,
        super(key: key);

  final Product _product;

  @override
  State<ProductSlidingUpPanel> createState() => _ProductSlidingUpPanelState();
}

class _ProductSlidingUpPanelState extends State<ProductSlidingUpPanel> {
  int _productCount = 1;

  void _increment() {
    setState(() {
      _productCount++;
    });
  }

  void _decrement() {
    setState(() {
      if (_productCount > 1) {
        _productCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return SlidingUpPanel(
      panel: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget._product.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Rating stars',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Size: 7.60 fl oz / 205 ml',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  '(123 Reviews)',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget._product.currency + widget._product.price.toString(),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  IconButton(
                    onPressed: _decrement,
                    icon: const Icon(Icons.remove),
                  ),
                  Text(
                    _productCount.toString(),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  IconButton(
                    onPressed: _increment,
                    icon: const Icon(Icons.add),
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
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                'Some really informative descreption about this awesome product you should buy.',
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
      minHeight: _size.height * 0.3,
      maxHeight: _size.height * 0.5,
      body: const SlidingUpPanelBody(),
      borderRadius: borderRadius,
    );
  }
}

BorderRadius get borderRadius {
  return const BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );
}
