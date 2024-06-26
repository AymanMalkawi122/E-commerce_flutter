
import 'package:e_commerce/core/extensions/build_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../banner/presentation/banner_carousel.dart';
import '../../../banner/presentation/banner_view_model.dart';
import '../../../core/presentation/base_view_model.dart';
import '../../../product/presentation/product_card.dart';
import '../../Home/home_view_model.dart';
import '../../root/navigation/actions.dart';

class HomeScrollContent extends StatelessWidget {
  const HomeScrollContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, BaseState<HomeState>>(
        builder: (BuildContext context, state) {
          if ((state.isLoading || state.error != null) &&
              state.data.products?.isEmpty != false) {
            return const Center(child: Text("Error"));
          }

          return Column(
              children: [
                if(state.data.banners?.isNotEmpty == true)
                  BlocProvider(
                      create: (_) => BannerViewModel(state.data.banners!),
                      child: const BannerCarousel()
                  ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Featured",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                ),
                SizedBox(
                    height: 200,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.data.products!.length,
                        itemBuilder: (context, index) =>
                            SizedBox(
                                width: 150,
                                child: GestureDetector(
                                    onTap: () {
                                      navigateToProductDetails(
                                          context,
                                          state.data.products![index]);
                                    },
                                    child: ProductCard(
                                      state.data.products![index],
                                      CardType.portrait,)
                                )
                            )
                    )
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "All",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                ),
                SizedBox(
                    width: context.deviceDimensions.width,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: state.data.products!.length,
                        itemBuilder: (context, index) =>
                            SizedBox(
                                height: 150,
                                width: context.deviceDimensions.width,
                                child: GestureDetector(
                                    onTap: () {
                                      navigateToProductDetails(
                                          context,
                                          state.data.products![index]);
                                    },
                                    child: ProductCard(
                                        state.data.products![index],
                                        CardType.portrait)
                                )
                            )
                    )
                )
              ]

          );
        });
  }
}