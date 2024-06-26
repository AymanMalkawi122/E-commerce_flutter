

import 'package:e_commerce/core/presentation/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //       child: SearchBar(
  //         elevation: MaterialStateProperty.all<double>(0.0),
  //         backgroundColor: WidgetStateProperty.all<Color?>(AppColors.cardBackground),
  //         leading: const Icon(CupertinoIcons.search),
  //         hintText: "search",
  //       )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: AppColors.cardBackground,
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.cardBackground,
            focusColor: AppColors.cardBackground,
            prefixIcon: Icon(CupertinoIcons.search),
            hintText: "search",
          ),
        )
    );
  }
}
