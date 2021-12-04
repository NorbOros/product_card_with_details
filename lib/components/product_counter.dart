import 'package:flutter/material.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({Key? key, required Function productQuantity})
      : _productQuantity = productQuantity,
        super(key: key);

  final Function _productQuantity;

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int _productCount = 1;

  void _increment() {
    setState(() {
      _productCount++;
      widget._productQuantity(_productCount);
    });
  }

  void _decrement() {
    setState(() {
      if (_productCount > 1) {
        widget._productQuantity(_productCount);
        _productCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _decrement,
          icon: const Icon(Icons.remove),
          hoverColor: Colors.red,
        ),
        Text(
          _productCount.toString(),
          style: Theme.of(context).textTheme.headline1,
        ),
        IconButton(
          onPressed: _increment,
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
