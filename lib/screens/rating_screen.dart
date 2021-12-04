import 'package:devlogie_product_card/components/product_rating_bar.dart';
import 'package:flutter/material.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);
  static const String routeName = '/rating-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '4,6',
              style: Theme.of(context).textTheme.headline1,
            ),
            const ProductRatingBar(),
            Row(
              children: [
                Text(
                  '5',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
