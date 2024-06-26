
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/presentation/base_view_model.dart';
import 'navigation/bottom_navigation/bottom_navigation.dart';
import 'navigation/bottom_navigation/bottom_navigation_view_model.dart';


class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => BottomNavViewModel(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            bottomNavigationBar: const AppBottomNavBar(),
            body: BlocBuilder<BottomNavViewModel, BaseState<Tabs>>(
                builder: (BuildContext context, state) {
                  return state.data.bodyView;
                })
        )
    );
  }
}
