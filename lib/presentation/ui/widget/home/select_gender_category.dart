import 'package:flutter/material.dart';

class SelectGenderCategory extends StatefulWidget {
  const SelectGenderCategory({super.key});

  @override
  _SelectGenderCategoryState createState() => _SelectGenderCategoryState();
}

class _SelectGenderCategoryState extends State<SelectGenderCategory> {
  String _selectedCategory = 'Men';
  final List<String> _categories = ['Men', 'Women', 'Children'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedCategory,
          icon: const Icon(Icons.arrow_drop_down),
          onChanged: (String? newValue) {
            setState(() {
              _selectedCategory = newValue!;
            });
          },
          items: _categories.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
