import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/auth/screens/signup_screen.dart';
import 'package:flutter_app/shared/widgets/custom_text_field.dart';
import 'package:flutter_app/shared/widgets/primary_button.dart';

void main() {
  testWidgets('SignupScreen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SignupScreen()));

    expect(find.text('Create Account'), findsWidgets); // Header and Button text
    expect(
      find.byType(CustomTextField),
      findsNWidgets(4),
    ); // Name, Email, Password, Confirm Password
    expect(find.byType(PrimaryButton), findsOneWidget);
    expect(find.text('Sign In here'), findsOneWidget);
  });
}
