import 'package:devlogie_product_card/screens/error_screen.dart';
import 'package:devlogie_product_card/screens/home_screen.dart';
import 'package:devlogie_product_card/screens/product_details_screen.dart';
import 'package:devlogie_product_card/screens/shopping_bag_screen.dart';
import 'package:devlogie_product_card/utils/theme_data_light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devlogie Product',
      home: const HomeScreen(),
      theme: ThemeDataLight.getThemeData(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
        ShoppingBagScreen.routeName: (context) => const ShoppingBagScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const ErrorScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const ErrorScreen());
      },
    );
  }
}
