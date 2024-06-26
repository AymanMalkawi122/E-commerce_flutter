
import 'package:e_commerce/product/data/product/product.dart';
import 'package:e_commerce/product/presentation/product_details.dart';
import 'package:e_commerce/screens/root/root_view.dart';
import 'package:flutter/material.dart';
import '../../../core/logger/Logger.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    final Routes? destination = Routes.fromName(settings.name);
    log.i(destination?.routeName);

    switch (destination) {
      case Routes.main:
        return MaterialPageRoute(builder: (_) => RootView());
      case Routes.productDetails:
        return validateArgs(
            args is Product,
            MaterialPageRoute(
                builder: (_) => ProductDetails(product: args as Product)
            )
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> validateArgs(bool isValid, Route<dynamic> validRoute) {
    if(isValid) {
      return validRoute;
    }
    return _errorRoute();
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

enum Routes {

  main(_main),
  productDetails(_productDetails),
  cart(_cart),
  searchResult(_searchResult),
  login(_login),
  register(_register);


  static const _main = "/";
  static const _productDetails = "/product-details";
  static const _cart = "/cart";
  static const _searchResult = "search-result";
  static const _login = "/login";
  static const _register = "/register";


  final String routeName;
  const Routes(this.routeName);


  static Routes? fromName(String? routeName) {
    if (routeName == null) {
      return null;
    }

    switch (routeName) {
      case _main: return Routes.main;
      case _productDetails: return Routes.productDetails;
      case _cart: return Routes.cart;
      case _searchResult: return Routes.searchResult;
      case _login: return Routes.login;
      case _register: return Routes.register;
    }
    return null;
  }

}