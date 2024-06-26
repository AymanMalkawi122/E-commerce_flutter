
import 'package:e_commerce/screens/home/home_app_bar_delegate.dart';
import 'package:e_commerce/screens/home/widgets/scroll_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
         SliverPersistentHeader(floating: true, pinned: true, delegate: HomeAppBarDelegate()),
          const SliverToBoxAdapter(
            child: HomeScrollContent(),
          )
        ]
    );
  }
}
