import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/logo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/custom_text_field.dart';
import '../../../shared/widgets/primary_button.dart';
import '../widgets/social_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              Text('Create Account', style: AppTextStyles.header),
              const SizedBox(height: 10),
              Text(
                'Create a new account to get started and enjoy seamless access to our features.',
                textAlign: TextAlign.center,
                style: AppTextStyles.subHeader,
              ),
              const SizedBox(height: 40),
              const CustomTextField(
                hintText: 'Name',
                prefixIcon: Icons.person_outline,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'Email address',
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'Password',
                prefixIcon: Icons.lock_outline,
                isPassword: true,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'Confirm Password',
                prefixIcon: Icons.lock_outline,
                isPassword: true,
              ),
              const SizedBox(height: 30),
              PrimaryButton(text: 'Create Account', onPressed: () {}),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: AppTextStyles.subHeader,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Go back to Login
                    },
                    child: Text('Sign In here', style: AppTextStyles.linkText),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  const Expanded(
                    child: Divider(color: Colors.grey, thickness: 0.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or Continue With Account',
                      style: AppTextStyles.subHeader.copyWith(fontSize: 12),
                    ),
                  ),
                  const Expanded(
                    child: Divider(color: Colors.grey, thickness: 0.5),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    icon: FontAwesomeIcons.facebookF,
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  const SizedBox(width: 20),
                  SocialButton(
                    icon: FontAwesomeIcons.google,
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  const SizedBox(width: 20),
                  SocialButton(
                    icon: FontAwesomeIcons.apple,
                    onPressed: () {},
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
