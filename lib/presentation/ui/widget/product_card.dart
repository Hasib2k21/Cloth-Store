import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159,
      height: 281,
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                "https://th.bing.com/th?id=OIP.PhV5SpzcvUFjD5p9kcw_PQHaHa&w=250&h=250&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2",
                width: double.infinity,
                height: 220,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    // Add a background color for better visibility
                    shape: BoxShape.circle, // Make it circular
                  ),
                  child: const Icon(
                    Icons.favorite_border_outlined,
                    size: 20, // Icon size
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Men's Harrington Jacket",
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                const Text(
                  "\$148.00",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF272727),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
