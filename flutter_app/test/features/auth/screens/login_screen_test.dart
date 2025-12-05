import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/features/auth/screens/login_screen.dart';
import 'package:flutter_app/shared/widgets/custom_text_field.dart';
import 'package:flutter_app/shared/widgets/primary_button.dart';

void main() {
  testWidgets('LoginScreen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

    expect(find.text('Log in'), findsOneWidget);
    expect(
      find.byType(CustomTextField),
      findsNWidgets(2),
    ); // Email and Password
    expect(find.byType(PrimaryButton), findsOneWidget);
    expect(find.text('Forgot Password'), findsOneWidget);
    expect(find.text('Sign Up here'), findsOneWidget);
  });
}
