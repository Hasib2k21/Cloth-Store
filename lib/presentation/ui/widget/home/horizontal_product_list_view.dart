
import 'package:flutter/cupertino.dart';

import '../product_card.dart';

class HorizontalProductListView extends StatelessWidget {
  const HorizontalProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ProductCard();
      },
      separatorBuilder: (_, __) => const SizedBox(width: 8),
    );
  }
}