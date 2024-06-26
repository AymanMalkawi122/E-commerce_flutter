
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/banner/presentation/banner_view_model.dart';
import 'package:e_commerce/core/extensions/build_context.dart';
import 'package:e_commerce/core/presentation/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/presentation/base_view_model.dart';

class BannerCarousel extends StatelessWidget {
  final double aspectRatio = 0.46;

  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerViewModel, BaseState<BannerCarouselState>>(
        // bloc: viewModel,
        builder: (context, state) =>
            Column(
                children: [
                  SizedBox(
                      height: context.deviceDimensions.width * aspectRatio,
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (i) =>
                              context.read<BannerViewModel>().add(
                                  ChangeIndex(i)
                              ),
                          controller: context.read<BannerViewModel>().pageController,
                          itemBuilder: (context, i) =>
                              SizedBox(
                                  width: context.deviceDimensions.width,
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 7),
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        child: CachedNetworkImage(
                                          imageUrl: state.data.banners[i % state.data.banners.length].url ?? "",
                                          placeholder: (context, url) => const CircularProgressIndicator(),
                                          errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      )
                                  )
                              )
                      )
                  ),
                  CurrentItemIndicator(state: state.data)
                ]
            )
    );
  }
}

class CurrentItemIndicator extends StatelessWidget {
  final BannerCarouselState state;

  const CurrentItemIndicator({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: context.deviceDimensions.width,
            minWidth: 50,
            maxHeight: 15
        ),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.banners.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              final isSelected = i == state.currentBannerIndex % state.banners.length;
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Icon(
                    (isSelected) ?
                    CupertinoIcons.capsule_fill :
                    CupertinoIcons.circle_filled,
                    color: (isSelected) ?
                    AppColors.starColor :
                    Colors.grey,
                    size: 10,
                  )
              );
            }
        )
    );
  }
}
