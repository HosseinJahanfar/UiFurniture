import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uifurniture/features/features_product/logic/cubit/selection_category_cubit.dart';
import 'package:uifurniture/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectionCategoryCubit(),
      child: MaterialApp(
        title: 'Flutter Ui',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
          scaffoldBackgroundColor: Colors.grey[300],
        ),
        home: const MainScreen(),
      ),
    );
  }
}
