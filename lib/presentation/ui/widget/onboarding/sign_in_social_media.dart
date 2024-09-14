import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInSocialMedia extends StatelessWidget {
  final String imageUrl;
  final String buttonText;
  final VoidCallback onTap;

  const SignInSocialMedia({
    super.key,
    required this.imageUrl,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _buildSocialButton(),
    );
  }

  Widget _buildSocialButton() {
    return Container(
      width: double.infinity,
      height: 49,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 11),
      decoration: ShapeDecoration(
        color: const Color(0xFFF4F4F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imageUrl,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 50),
          Text(
            buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF272727),
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w500,
              height: 0.10,
              letterSpacing: -0.50,
            ),
          ),
        ],
      ),
    );
  }
}
