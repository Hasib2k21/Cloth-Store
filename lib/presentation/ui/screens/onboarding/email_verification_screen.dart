import 'package:clot_store/presentation/ui/screens/onboarding/sign_in_screen.dart';
import 'package:clot_store/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsPath.msgIcon,
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'We Sent you an Email to reset your password.',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 180, // Set your desired width here
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>const SignInScreen());
                  },
                  child: const Text('Return to Login'),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
