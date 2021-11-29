import 'package:flutter/material.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);
  static const String routeName = '/rating-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Rating Screen should be implemented here',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
