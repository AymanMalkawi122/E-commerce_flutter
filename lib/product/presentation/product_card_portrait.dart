
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/product/presentation/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/presentation/app_colors.dart';
import '../data/product/product.dart';


class ProductCardPortrait extends StatelessWidget {
  final Product product;

  const ProductCardPortrait(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.hardEdge,
        color: AppColors.cardBackground,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Card(
                      margin: EdgeInsets.zero,
                      clipBehavior: Clip.hardEdge,
                      child: SizedBox.expand(
                          child: CachedNetworkImage(
                            imageUrl: product.thumbnail ?? "",
                            placeholder: (context,
                                url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                            fit: BoxFit.fitHeight,
                          )
                      )
                  )
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Text(
                    product.title ?? "",
                    style:  GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  )
              ),


              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 7),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Price(product, true),
                        const Spacer(),
                        Container(
                            height: 20,
                            width: 20,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              iconSize: 22,
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.suit_heart,
                                size: 20,
                                color: Colors.black,
                              ),
                            )
                        )
                      ]
                  )
              ),
            ]
        )
    );
  }
}