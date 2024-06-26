
import 'package:e_commerce/core/presentation/app_colors.dart';
import 'package:e_commerce/di/injection.dart';
import 'package:e_commerce/screens/root/navigation/route_generator.dart';
import 'package:e_commerce/screens/root/root_view.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

void main() {
  Logger.level = Level.all;
  configureDependencies(Environment.dev);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: AppColors.appBackground,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: const SafeArea(child: RootView())
    );
  }
}
