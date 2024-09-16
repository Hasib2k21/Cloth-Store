
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  void _updateQuantity(int delta) {
    setState(() {
      quantity = (quantity + delta).clamp(1, double.infinity).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 56,
      decoration: ShapeDecoration(
        color: const Color(0xFFF4F4F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Quantity',
              style: TextStyle(
                color: Color(0xFF272727),
                fontSize: 16,
                fontFamily: 'Circular Std',
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                _buildQuantityButton(Icons.remove, -1),
                const SizedBox(width: 16),
                Text(
                  quantity.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gabarito',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF272727),
                  ),
                ),
                const SizedBox(width: 16),
                _buildQuantityButton(Icons.add, 1),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon, int delta) {
    return Container(
      width: 32,
      height: 32,
      decoration: const BoxDecoration(
        color: AppColors.themeColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: () => _updateQuantity(delta),
        padding: EdgeInsets.zero,
        iconSize: 20,
      ),
    );
  }
}