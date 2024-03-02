//!ItemCategoryWidget
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uifurniture/features/features_product/logic/cubit/selection_category_cubit.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({
    super.key,
    required this.selectionCategory,
    required this.valueCategory,
    required this.index,
  });

  final List<String> selectionCategory;
  final int valueCategory;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<SelectionCategoryCubit>(context).changeIndex(index);
      },
      child: Padding(
        padding: EdgeInsets.only(left: index == 0 ? 10 : 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectionCategory[index],
              style: TextStyle(
                  color: valueCategory == index ? Colors.black : Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 55,
              height: 5,
              decoration: BoxDecoration(
                  color: valueCategory == index ? Colors.black : Colors.grey,
                  borderRadius: BorderRadius.circular(15)),
            )
          ],
        ),
      ),
    );
  }
}
