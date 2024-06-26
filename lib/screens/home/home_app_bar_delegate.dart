
import 'package:e_commerce/core/extensions/build_context.dart';
import 'package:e_commerce/core/presentation/app_colors.dart';
import 'package:e_commerce/search/presentation/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBarDelegate extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double collapsePercentage = (shrinkOffset / (maxExtent - minExtent))
        .clamp(0, 1);
    print("$collapsePercentage $shrinkOffset");
    return Material(
        color: AppColors.appBackground,
        elevation: 1,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                width: context.deviceDimensions.width,
                height: 70,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Opacity(
                            opacity: 1 - collapsePercentage,
                            child: const Text("hi,\n Ayman Malkawi")
                        ),
                        const Spacer(),
                        const Icon(CupertinoIcons.cart)
                      ],
                    )
                )
            ),
            Positioned(
                bottom: 5,
                width: context.deviceDimensions.width - 50 * collapsePercentage,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15 * (1 - collapsePercentage) ),
                    child: const ProductSearchBar()
                )
            )
          ],
        )
    );
  }


  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;

}
