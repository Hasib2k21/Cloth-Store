import 'package:clot_store/presentation/ui/widget/home/select_gender_category.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class HomeAppber extends StatelessWidget {
  const HomeAppber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const ShapeDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://th.bing.com/th?id=OIP.POVcQAcynwYuJYA7-JJR-AHaHa&w=104&h=104&c=7&bgcl=75185c&r=0&o=6&pid=13.1"),
              fit: BoxFit.fill,
            ),
            shape: OvalBorder(),
          ),
        ),
        const SelectGenderCategory(),
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: AppColors.themeColor,
            // Set your desired background color here
            shape:
                BoxShape.circle, // Use BoxShape.circle for a circular container
          ),
          child: const Center(
            child: Icon(
              Icons.shopping_bag,
              color: Colors.white, // Set the icon color if needed
            ),
          ),
        ),
      ],
    );
  }
}
