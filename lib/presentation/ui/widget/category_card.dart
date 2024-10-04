import 'package:flutter/material.dart';
import '../utils/category_list.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryItem category;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add functionality for tapping the category
      },
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.category.imageUrl),
                fit: BoxFit.fill,
              ),
              shape: const OvalBorder(),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.category.label,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
