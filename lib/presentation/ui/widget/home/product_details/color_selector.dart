import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/product_details/selector.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({super.key});

  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  String selectedColor = 'orange';
  final Map<String, Color> colors = {
    'orange': Colors.orange,
    'black': Colors.black,
    'red': Colors.red,
    'yellow': Colors.yellow,
    'blue': Colors.blue,
  };

  @override
  Widget build(BuildContext context) {
    return Selector<String>(
      title: 'Color',
      items: colors.keys.toList(),
      selectedItem: selectedColor,
      displayText: (colorName) => colorName,
      color: (colorName) => colors[colorName]!,
      onItemSelected: (colorName) => setState(() => selectedColor = colorName),
    );
  }
}