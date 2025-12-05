import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/logo.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/custom_text_field.dart';
import '../../../shared/widgets/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 20),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                ),
              ),
              const SizedBox(height: 20),
              Logo(),
              const SizedBox(height: 30),
              Text('Forgot Password', style: AppTextStyles.header),
              const SizedBox(height: 10),
              Text(
                'Enter your email address to receive a reset link and regain access to your account.',
                textAlign: TextAlign.center,
                style: AppTextStyles.subHeader,
              ),
              const SizedBox(height: 40),
              const CustomTextField(
                hintText: 'Email address',
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 30),
              PrimaryButton(text: 'Continue', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
