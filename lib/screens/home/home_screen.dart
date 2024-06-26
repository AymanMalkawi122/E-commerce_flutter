
import 'package:e_commerce/screens/Home/home_view_model.dart';
import 'package:e_commerce/screens/Home/widgets/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => HomeViewModel(),
        child: const HomeView()
    );
  }
}