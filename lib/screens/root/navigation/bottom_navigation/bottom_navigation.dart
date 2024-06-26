
import 'package:e_commerce/core/presentation/app_colors.dart';
import 'package:e_commerce/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/presentation/base_view_model.dart';
import '../../../Home/home_screen.dart';
import 'bottom_navigation_view_model.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavViewModel, BaseState<Tabs>>(
        builder: (BuildContext context, state) {
          final navItems =
          Tabs.values.map((t) => t.item).toList();

          return
            Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(color: Colors.black38,
                              spreadRadius: 4,
                              blurRadius: 10)
                        ]
                    ),

                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        child: BottomNavigationBar(
                          items: navItems,
                          currentIndex: Tabs.values.indexOf(state.data),
                          selectedItemColor: AppColors.tabButton,
                          showSelectedLabels: false,
                          showUnselectedLabels: false,
                          unselectedItemColor: Colors.black,
                          type: BottomNavigationBarType.fixed,
                          onTap: (i) {
                            final destination = Tabs.values[i];
                            context.read<BottomNavViewModel>().add(
                                ChangeTab(destination));
                          },
                        )
                    )
                )
            );
        }
    );
  }
}

extension TabBodyWidgets on Tabs {
  Widget get bodyView =>
      switch(this) {
        Tabs.home => const HomeScreen(),
        Tabs.search => const SearchScreen(),
        Tabs.wishlist => Center(child: Text(name)),
        Tabs.profile => Center(child: Text(name)),
      };

  BottomNavigationBarItem get item =>
      BottomNavigationBarItem(
          icon: Icon(icon),
          label: name
      );
}
