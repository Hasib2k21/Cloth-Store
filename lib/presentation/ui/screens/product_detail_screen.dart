import 'package:clot_store/presentation/ui/utils/app_colors.dart';
import 'package:clot_store/presentation/ui/widget/circular_icon_button.dart';
import 'package:clot_store/presentation/ui/widget/product_detail_slider.dart';
import 'package:flutter/material.dart';

import '../utils/product_details/selector.dart';
import '../widget/home/product_details/color_selector.dart';
import '../widget/home/product_details/quantity_selector.dart';
import '../widget/home/product_details/size_selector.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 12),
            const ProductSlider(),
            const SizedBox(height: 12),
            _buildProductTitle(context),
            const SizedBox(height: 8),
            _buildProductPrice(context),
            const SizedBox(height: 12),
            const SizeSelector(),
            const SizedBox(height: 12),
            const ColorSelector(),
            const SizedBox(height: 12),
            const QuantitySelector(),
          ],
        ),
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircularIconButton(onPressed: () {}),
        CircularIconButtonFav(onPressed: () {}),
      ],
    );
  }

  Widget _buildProductTitle(BuildContext context) {
    return Text(
      "Men's Harrington Jacket",
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Widget _buildProductPrice(BuildContext context) {
    return Text(
      '\$148',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.themeColor),
    );
  }
}



