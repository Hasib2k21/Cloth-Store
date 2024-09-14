import 'package:flutter/material.dart';
import '../../utils/category_list.dart';
import '../../widget/circular_icon_button.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  _CategoryListScreenState createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  void _onCategoryTap(String label) {
    // Handle the category tap event
    // For example, navigate to a different screen or show a dialog
    // You can use label or other properties as needed
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Tapped on $label')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircularIconButton(onPressed: () {}),
            const SizedBox(height: 20),
            Text(
              'Shop By Categories',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            _buildCategoryList(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return Expanded(
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () => _onCategoryTap(category.label),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 64,
                  padding: const EdgeInsets.all(12),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(category.imageUrl),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        category.label,
                        style: const TextStyle(
                          color: Color(0xFF272727),
                          fontSize: 16,
                          fontFamily: 'Circular Std',
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        },
      ),
    );
  }
}
