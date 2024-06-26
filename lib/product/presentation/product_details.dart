import 'package:flutter/material.dart';

import '../data/product/product.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Material(child: Center(child: Text(product.title ?? "empty")));
  }
}
