import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uifurniture/features/features_product/logic/cubit/selection_category_cubit.dart';
import 'package:uifurniture/features/features_product/model/product_model.dart';
import 'package:uifurniture/features/features_product/widget/app_bar.dart';
import 'package:uifurniture/features/features_product/widget/items_card.dart';
import 'package:uifurniture/features/features_product/widget/items_categoray.dart';
import 'package:uifurniture/features/features_product/widget/items_trends.dart';
import 'package:uifurniture/features/features_product/widget/slider_widget.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  List<String> selectionCategory = [
    "Chairs",
    "Tables",
    "Desks",
    "Boards",
    "Dining",
    "Bed",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          //*AppBar ProductScreen
          const AppBarWidget(),
          const SizedBox(
            height: 10,
          ),
          //*Slider Stack
          SliderWidget(size: size),
          const SizedBox(
            height: 10,
          ),
          //*ItemCategoray productScreen
          BlocBuilder<SelectionCategoryCubit, int>(
            builder: (context, state) {
              return SizedBox(
                width: size.width,
                height: 50,
                child: ListView.builder(
                  itemCount: selectionCategory.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var valueCategory =
                        context.read<SelectionCategoryCubit>().currentIndex;
                    return ItemCategoryWidget(
                      selectionCategory: selectionCategory,
                      valueCategory: valueCategory,
                      index: index,
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //*ListView Card
          SizedBox(
            width: size.width,
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
              itemBuilder: (context, index) {
                return ItemsCardWidget(
                  index: index,
                );
              },
            ),
          ),
          //*Title Trends
          Container(
            width: size.width,
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: const Text(
              'Trends',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          //*Trends Widget
          Padding(
            padding: EdgeInsets.only(
                bottom: size.height - kBottomNavigationBarHeight * 13),
            child: SizedBox(
              width: size.width,
              height: 150,
              child: ListView.builder(
                itemCount: product.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemsTrendsWIdget(
                    index: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
