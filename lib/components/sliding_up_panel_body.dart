import 'package:carousel_slider/carousel_slider.dart';
import 'package:devlogie_product_card/models/product.dart';
import 'package:flutter/material.dart';

class SlidingUpPanelBody extends StatelessWidget {
  final Product product;
  const SlidingUpPanelBody(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: _size.height * 0.60,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            scrollDirection: Axis.horizontal,
          ),
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                      tag: product.name + product.id,
                      child: Image.asset(
                        product.imageUrl,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
