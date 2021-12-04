import 'package:devlogie_product_card/providers/shopping_bag_provider.dart';
import 'package:devlogie_product_card/screens/error_screen.dart';
import 'package:devlogie_product_card/screens/home_screen.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:devlogie_product_card/screens/rating_screen.dart';
import 'package:devlogie_product_card/screens/shopping_bag_screen.dart';
import 'package:devlogie_product_card/utils/theme_data_light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShoppingBagProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Devlogie Product',
        home: const HomeScreen(),
        theme: ThemeDataLight.getThemeData(),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          ProductDetailsScreen.routeName: (context) =>
              const ProductDetailsScreen(),
          ShoppingBagScreen.routeName: (context) => const ShoppingBagScreen(),
          RatingScreen.routeName: (context) => const RatingScreen()
        },
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => const ErrorScreen());
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => const ErrorScreen());
        },
      ),
    );
  }
}
