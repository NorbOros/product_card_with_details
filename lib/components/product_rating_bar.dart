import 'package:devlogie_product_card/screens/rating_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductRatingBar extends StatefulWidget {
  const ProductRatingBar({Key? key}) : super(key: key);

  @override
  _ProductRatingBarState createState() => _ProductRatingBarState();
}

class _ProductRatingBarState extends State<ProductRatingBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateTo(context, RatingScreen.routeName),
      child: RatingBar.builder(
        initialRating: 1,
        minRating: 1,
        maxRating: 5,
        itemCount: 5,
        itemSize: 23,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        ignoreGestures: true,
        onRatingUpdate: (rating) {
          setState(() {
            print(rating);
          });
        },
      ),
    );
  }

  void _navigateTo(final BuildContext context, final String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }
}
