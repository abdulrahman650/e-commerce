import 'package:e_commerce_route/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/cart/presentaion/screens/cart_screen.dart';
import '../../features/home/presentaion/screens/home_screen.dart';
import '../../features/products/presentaion/screens/product_details.dart';
import '../../features/products/presentaion/screens/products_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.products:
        return MaterialPageRoute(
          builder: (_) => const ProductsScreen(),
          settings: settings,
        );
      case Routes.productDetails:
        return MaterialPageRoute(
          builder: (_) => const ProductDetails(),
          settings: settings,
        );
      case Routes.cart:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
