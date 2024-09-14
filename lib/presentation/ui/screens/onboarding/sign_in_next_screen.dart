import 'package:clot_store/presentation/ui/screens/onboarding/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/onboarding/custom_rich_text.dart';
import '../bottom_navbar_screen.dart';

class SignInNextScreen extends StatefulWidget {
  const SignInNextScreen({super.key});

  @override
  State<SignInNextScreen> createState() => _SignInNextScreenState();
}

class _SignInNextScreenState extends State<SignInNextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign in',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(hintText: "Password"),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const BottomNavbarScreen());
                  },
                  child: const Text('Continue')),
              const SizedBox(height: 14),
              Column(
                children: [
                  CustomRichText(
                    mainText: 'Forgot Password?',
                    clickableText: ' Reset',
                    onTap: () {
                      Get.offAll(() => const ForgotPasswordScreen());
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
