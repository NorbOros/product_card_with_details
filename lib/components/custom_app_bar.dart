import 'package:badges/badges.dart';
import 'package:devlogie_product_card/providers/shopping_bag_provider.dart';
import 'package:devlogie_product_card/screens/shopping_bag_screen.dart';
import 'package:devlogie_product_card/utils/devlogie_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: DevlogieColors.black,
          ),
        ),
      ),
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 18.0),
          child: Consumer<ShoppingBagProvider>(
            builder: (_, shoppingBag, child) => Badge(
              badgeColor: DevlogieColors.lightRed,
              toAnimate: false,
              showBadge: shoppingBag.shoppingBagItemList.isNotEmpty,
              badgeContent: Text(
                shoppingBag.shoppingBagItemList.length.toString(),
                style: Theme.of(context).textTheme.bodyText1,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ShoppingBagScreen.routeName);
                },
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: DevlogieColors.black,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
