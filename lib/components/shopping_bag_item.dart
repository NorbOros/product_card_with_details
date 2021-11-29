import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class ShoppingBagItem extends StatefulWidget {
  Product product;

  ShoppingBagItem(this.product, {Key? key}) : super(key: key);

  @override
  _ShoppingBagItemState createState() => _ShoppingBagItemState();
}

class _ShoppingBagItemState extends State<ShoppingBagItem> {
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
    return GestureDetector(
      onTap: () => _navigateTo(context),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: widget.product.name + widget.product.id,
                child: Image.asset(
                  widget.product.imageUrl,
                  height: 120,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      widget.product.description,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 40,
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      widget.product.currency + widget.product.price.toString(),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: _decrement,
                        icon: const Icon(Icons.remove),
                        hoverColor: Colors.red,
                      ),
                      Text(
                        _productCount.toString(),
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      IconButton(
                        onPressed: _increment,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return  ProductDetailsScreen(product);
    }));
  }
}
