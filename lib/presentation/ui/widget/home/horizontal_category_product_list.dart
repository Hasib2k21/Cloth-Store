import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/category_list.dart';
import '../category_card.dart';

class HorizontalCategoryProductList extends StatelessWidget {
  const HorizontalCategoryProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return CategoryCard(
          category: category, // Passing the CategoryItem directly
        );
      },
      separatorBuilder: (_, __) => const SizedBox(width: 8),
    );
  }
}
