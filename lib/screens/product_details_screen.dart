import 'package:devlogie_product_card/components/behind_sliding_panel_widget.dart';
import 'package:devlogie_product_card/models/product.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product-details-screen';

  final Product _product = Product(
      name: 'Moisturizer',
      description: 'Oil balancing mask with some really long description',
      price: 11.99,
      imageUrl: 'assets/images/moisturizer.jpg');

  ProductDetailsScreen({Key? key}) : super(key: key);

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
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: DevlogieColors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SlidingUpPanel(
        panel: Table(
          // border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(64),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Container(
                  height: 32,
                  color: Colors.green,
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Container(
                    height: 32,
                    width: 32,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 64,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              children: <Widget>[
                Container(
                  height: 64,
                  width: 128,
                  color: Colors.purple,
                ),
                Container(
                  height: 32,
                  color: Colors.yellow,
                ),
                Center(
                  child: Container(
                    height: 32,
                    width: 32,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
        minHeight: _size.height * 0.35,
        maxHeight: _size.height * 0.6,
        body: const BehindSliderWidget(),
        borderRadius: borderRadius,
      ),
    );
  }

  BorderRadius get borderRadius {
    return const BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
  }
}
