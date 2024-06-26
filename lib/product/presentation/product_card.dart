
import 'package:e_commerce/core/presentation/app_colors.dart';
import 'package:e_commerce/product/data/product/product.dart';
import 'package:e_commerce/product/presentation/product_card_landscape.dart';
import 'package:e_commerce/product/presentation/product_card_portrait.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final CardType type;

  const ProductCard(this.product, this.type, {super.key});

  @override
  Widget build(BuildContext context) {
    return switch(type) {
      CardType.portrait => ProductCardPortrait(product),
      CardType.landscape => ProductCardLandscape(product),
    };
  }
}

enum CardType{
  portrait,
  landscape
}
class Price extends StatelessWidget {
  final Product product;
  final bool verticalLayout;

  List<Widget> get children =>
      [
        if(hasDiscount()) Text(
          "\$${product.price!.toStringAsFixed(2)}",
          style: GoogleFonts.poppins(
              decoration: TextDecoration.lineThrough,
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: Colors.grey
          ),
        ),

        const SizedBox(width: 7),

        Text(
          "\$${hasDiscount() ?
          discountPrice().toStringAsFixed(2) :
          product.price.toString()}",
          style: GoogleFonts.poppins(
              color: hasDiscount() ? AppColors.discountPercentage : null,
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),
        ),
      ];

  const Price(this.product, this.verticalLayout);

  @override
  Widget build(BuildContext context) {
    return
      FittedBox(
          fit: BoxFit.fitWidth,
          child:
          verticalLayout
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          )
              : Row(
              children: children
          )

      );
  }

  double discountPrice() {
    return product.price! -
        (product.price! * product.discountPercentage! / 100);
  }

  bool hasDiscount() {
    if (product.discountPercentage == null) {
      return false;
    }
    return product.discountPercentage!.floor() > 0;
    // TODO replace with real logic after backend is implemented
  }
}

class _starRating extends StatelessWidget {
  final Product product;
  final List<Widget> starList = [];
  final starCount = 5;

  _starRating(this.product) {
    for (var i = 1; i <= starCount; i++) {
      double rating = product.rating ?? 0.0;
      Icon currentStarIcon =
      rating.floor() >= i ? const Icon(Icons.star, color: AppColors.starColor) :
      rating.ceil() == i ? const Icon(Icons.star_half, color: Colors.grey) :
      const Icon(Icons.star_border, color: Colors.grey);
      starList.add(currentStarIcon);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: starList + [
          const SizedBox(width: 5),
          Text(product.reviews?.length.toString() ?? "")
        ]
    );
  }
}