import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:tip_wise/app.dart';
import 'package:tip_wise/features/tip_calculator/domain/providers.dart';
import 'package:tip_wise/features/tip_calculator/presentation/screens/tip_screen.dart';

void main() {
  testWidgets('App starts and shows TipWise title', (WidgetTester tester) async {
    // Build our app wrapped in ProviderScope
    await tester.pumpWidget(
      const ProviderScope(
        child: TipWiseApp(),
      ),
    );

    // Verify that our app title is shown
    expect(find.text('TipWise'), findsOneWidget);
  });

  testWidgets('Bill amount input works', (WidgetTester tester) async {
    // Build our app
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(home: TipScreen()),
      ),
    );

    // Find the bill amount field and enter text
    await tester.enterText(find.byType(TextField), '100.00');
    await tester.pump();

    // Verify that the provider has updated
    final container = ProviderContainer();
    final billAmount = container.read(billAmountProvider);
    expect(billAmount, 100.00);
  });
}
