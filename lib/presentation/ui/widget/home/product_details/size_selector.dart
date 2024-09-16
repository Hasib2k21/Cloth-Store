import 'package:flutter/cupertino.dart';

import '../../../utils/product_details/selector.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = 'S';
  final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];

  @override
  Widget build(BuildContext context) {
    return Selector<String>(
      title: 'Size',
      items: sizes,
      selectedItem: selectedSize,
      displayText: (size) => size,
      onItemSelected: (size) => setState(() => selectedSize = size),
    );
  }
}