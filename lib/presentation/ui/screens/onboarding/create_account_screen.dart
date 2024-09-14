import 'package:clot_store/presentation/ui/screens/onboarding/sign_in_screen.dart';
import 'package:clot_store/presentation/ui/screens/onboarding/user_onfo_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/circular_icon_button.dart';
import '../../widget/onboarding/custom_rich_text.dart';
import 'forgot_password_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularIconButton(
                onPressed: () {
                  Get.offAll(() => const SignInScreen());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(hintText: "First Name"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "Last Name"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "Email Address"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "Password"),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const UserInfoScreen());
                  },
                  child: const Text('Continue')),
              const SizedBox(height: 25),
              Column(
                children: [
                  CustomRichText(
                      mainText: 'Forgot Password?',
                      clickableText: ' Reset',
                      onTap: () {
                        Get.to(() => const ForgotPasswordScreen());
                      })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
