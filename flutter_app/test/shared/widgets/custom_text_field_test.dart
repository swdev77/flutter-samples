import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/shared/widgets/custom_text_field.dart';

void main() {
  testWidgets('CustomTextField renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomTextField(
            hintText: 'Enter text',
            prefixIcon: Icons.person,
          ),
        ),
      ),
    );

    expect(find.text('Enter text'), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);
  });

  testWidgets('CustomTextField toggles password visibility', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomTextField(hintText: 'Password', isPassword: true),
        ),
      ),
    );

    // Initial state: obscure text is true (visibility off icon shown)
    expect(find.byIcon(Icons.visibility_off_outlined), findsOneWidget);

    // Tap to toggle
    await tester.tap(find.byType(IconButton));
    await tester.pump();

    // New state: obscure text is false (visibility on icon shown)
    expect(find.byIcon(Icons.visibility_outlined), findsOneWidget);
  });
}
