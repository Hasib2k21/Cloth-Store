import 'package:clot_store/presentation/ui/screens/onboarding/email_verification_screen.dart';
import 'package:clot_store/presentation/ui/screens/onboarding/sign_in_screen.dart';
import 'package:clot_store/presentation/ui/widget/circular_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularIconButton(onPressed: () {
                Get.offAll(() => const SignInScreen());
              }),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration:
                    const InputDecoration(hintText: "Enter Email Address"),
              ),const SizedBox(height: 14),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const EmailVerificationScreen());
                  },
                  child: const Text('Continue')),
            ],
          ),
        ),
      ),
    );
  }
}
