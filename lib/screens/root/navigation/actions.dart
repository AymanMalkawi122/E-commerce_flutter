
import 'package:e_commerce/product/data/product/product.dart';
import 'package:e_commerce/screens/root/navigation/route_generator.dart';
import 'package:flutter/material.dart';

void navigateToProductDetails(BuildContext context, Product product) {

  Navigator.of(context).pushNamed(
    Routes.productDetails.routeName,
    arguments: product
  );
}