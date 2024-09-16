import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:clot_store/presentation/ui/utils/app_colors.dart';
import 'package:clot_store/presentation/ui/widget/circular_icon_button.dart';
import 'package:clot_store/presentation/ui/widget/product_detail_slider.dart';
import '../widget/home/product_details/color_selector.dart';
import '../widget/home/product_details/quantity_selector.dart';
import '../widget/home/product_details/size_selector.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
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
                    const SizedBox(height: 12),
                    _buildDescription(),
                    const SizedBox(height: 12),
                    _buildShippingInfo(context),
                    const SizedBox(height: 12),
                    _buildReviews(context),
                    const SizedBox(height: 12),
                    _buildPeopleReview(context),
                    const SizedBox(height: 12),
                    _buildPeopleReview(context),
                  ],
                ),
              ),
            ),
          ),
          _buildProductAddToCartSection(),
        ],
      ),
    );
  }

  TextStyle _getTitleMediumTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!;
  }

  Widget _buildHeader() {
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
      style: _getTitleMediumTextStyle(context),
    );
  }

  Widget _buildProductPrice(BuildContext context) {
    return Text(
      '\$148',
      style: _getTitleMediumTextStyle(context).copyWith(color: AppColors.themeColor),
    );
  }

  Widget _buildDescription() {
    return const ReadMoreText(
      'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. '
          'The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
      trimMode: TrimMode.Line,
      trimLines: 2,
      colorClickableText: Colors.pink,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildShippingInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping & Returns',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          'Free standard shipping and free 60-day return',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildReviews(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reviews',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          children: [
            Text(
              '4.5',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text('Ratings', style: Theme.of(context).textTheme.headlineLarge),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          children: [
            Text(
              '213',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
            ),
            Text('Reviews', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey)),
          ],
        ),
      ],
    );
  }

  Widget _buildPeopleReview(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildReviewerAvatar(),
            const SizedBox(width: 10),
            Text(
              'Alex Morgan',
              style: _getTitleMediumTextStyle(context),
            ),
            const Spacer(),
            _buildStarRatings(),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Text(
          '12 Days Ago',
          style: _getTitleMediumTextStyle(context),
        ),
      ],
    );
  }

  Widget _buildReviewerAvatar() {
    return Container(
      width: 50,
      height: 50,
      decoration: const ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://th.bing.com/th?id=OIP.POVcQAcynwYuJYA7-JJR-AHaHa&w=104&h=104&c=7&bgcl=75185c&r=0&o=6&pid=13.1",
          ),
          fit: BoxFit.fill,
        ),
        shape: OvalBorder(),
      ),
    );
  }

  Widget _buildStarRatings() {
    return Wrap(
      spacing: 2,
      children: List.generate(5, (index) => Icon(Icons.star_rate)),
    );
  }

  Widget _buildProductAddToCartSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$148',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Add to Bag'),
            ],
          ),
        ),
      ),
    );
  }
}
