import 'package:flutter/material.dart';

import '../app_colors.dart';

class Selector<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final T selectedItem;
  final String Function(T) displayText;
  final void Function(T) onItemSelected;
  final Color Function(T)? color;

  const Selector({
    super.key,
    required this.title,
    required this.items,
    required this.selectedItem,
    required this.displayText,
    required this.onItemSelected,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 56,
      decoration: ShapeDecoration(
        color: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF272727),
                fontSize: 16,
                fontFamily: 'Circular Std',
                fontWeight: FontWeight.w400,
              ),
            ),
            GestureDetector(
              onTap: () => _showSelector(context),
              child: Row(
                children: [
                  if (color != null)
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: color!(selectedItem), // Show the selected color
                        shape: BoxShape.circle,
                      ),
                    ),
                  const SizedBox(width: 12),
                  Text(
                    displayText(selectedItem),
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF272727),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ...items.map((item) {
                final bool isSelected = item == selectedItem;
                return GestureDetector(
                  onTap: () {
                    onItemSelected(item);
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.themeColor
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              if (color != null)
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: color!(item), // Color indicator
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              const SizedBox(width: 12),
                              Text(
                                displayText(item),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: isSelected
                                      ? Colors.white
                                      : const Color(0xFF272727),
                                ),
                              ),
                            ],
                          ),
                          if (isSelected) const Icon(Icons.check, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }
}