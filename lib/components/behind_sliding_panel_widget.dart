import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BehindSliderWidget extends StatelessWidget {
  const BehindSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/moisturizer.jpg'),
                ),
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: 150,
                      color: Colors.blueAccent,
                      child: Text('asd'),
                    );
                  },
                  itemCount: 3,
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
