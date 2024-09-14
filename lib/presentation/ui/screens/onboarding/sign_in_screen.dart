import 'package:clot_store/presentation/ui/screens/onboarding/create_account_screen.dart';
import 'package:clot_store/presentation/ui/screens/onboarding/sign_in_next_screen.dart';
import 'package:clot_store/presentation/ui/utils/assets_path.dart';
import 'package:clot_store/presentation/ui/widget/onboarding/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/onboarding/sign_in_social_media.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                decoration: const InputDecoration(hintText: "Email Address"),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SignInNextScreen());
                  },
                  child: const Text('Continue')),
              const SizedBox(height: 14),
              Column(
                children: [
                  CustomRichText(
                      mainText: '''Don't have an account?''',
                      clickableText: ' Sign up',
                      onTap: () {
                        Get.to(() => const CreateAccountScreen());
                      })
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 70),
                  SignInSocialMedia(
                    imageUrl: AssetsPath.appleIcon,
                    buttonText: 'Continue With Apple',
                    onTap: () {
                      // Apple sign-in logic
                    },
                  ),
                  const SizedBox(height: 12),
                  SignInSocialMedia(
                    imageUrl: AssetsPath.googleIcon,
                    buttonText: 'Continue With Google',
                    onTap: () {
                      // Google sign-in logic
                    },
                  ),
                  const SizedBox(height: 12),
                  SignInSocialMedia(
                    imageUrl: AssetsPath.fbIcon,
                    buttonText: 'Continue With Facebook',
                    onTap: () {
                      // Facebook sign-in logic
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
