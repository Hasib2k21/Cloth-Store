import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class CustomRichText extends StatelessWidget {
  final String mainText;
  final String clickableText;
  final VoidCallback onTap;

  const CustomRichText({
    Key? key,
    required this.mainText,
    required this.clickableText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontWeight: FontWeight.w600,
          letterSpacing: 0.4,
        ),
        text: mainText,
        children: [
          TextSpan(
            text: clickableText,
            style: const TextStyle(color: AppColors.themeColor),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
