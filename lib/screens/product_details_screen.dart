import 'package:devlogie_product_card/components/behind_sliding_panel_widget.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product-details-screen';

  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: DevlogieColors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SlidingUpPanel(
        color: Colors.amberAccent,
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        minHeight: _size.height * 0.35,
        maxHeight: _size.height * 0.6,
        collapsed: Container(
          decoration: BoxDecoration(borderRadius: borderRadius),
          child: Center(
            child: Text(
              "This is the collapsed Widget",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: BehindSliderWidget(),
        borderRadius: borderRadius,
      ),
    );
  }

  BorderRadius get borderRadius {
    return BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
  }
}
