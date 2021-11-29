import 'package:flutter/material.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({Key? key}) : super(key: key);

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
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
    return Row(
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
