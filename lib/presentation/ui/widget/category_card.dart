import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.network('https://th.bing.com/th?id=OIP.1RfKeDjiffAd7MnXDykgcQAAAA&w=285&h=219&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',height: 60,width: 60,),
          ),
          const SizedBox(height: 4),
          const Text(
            'Shoes',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}