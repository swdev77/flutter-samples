import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/auth/screens/forgot_password_screen.dart';
import 'package:flutter_app/shared/widgets/custom_text_field.dart';
import 'package:flutter_app/shared/widgets/primary_button.dart';

void main() {
  testWidgets('ForgotPasswordScreen renders correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: ForgotPasswordScreen()));

    expect(find.text('Forgot Password'), findsOneWidget);
    expect(find.byType(CustomTextField), findsOneWidget); // Email
    expect(find.byType(PrimaryButton), findsOneWidget);
    expect(find.text('Continue'), findsOneWidget);
  });
}
