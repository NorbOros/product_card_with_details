import 'package:carousel_slider/carousel_slider.dart';
import 'package:devlogie_product_card/components/product_detail_card.dart';
import 'package:flutter/material.dart';

class SlidingUpPanelBody extends StatelessWidget {
  const SlidingUpPanelBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: _size.height,
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
                  children: [
                    Hero(
                      tag: 'product-pic-1',
                      child: Image.asset(
                        'assets/images/moisturizer.jpg',
                      ),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          top: _size.height * 0.42,
          right: 10,
          left: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ProductDetailCard(title: 'Vegan'),
              ProductDetailCard(
                title: 'Natural',
              ),
              ProductDetailCard(
                title: 'C+ Neutral',
              ),
            ],
          ),
        )
      ],
    );
  }
}
