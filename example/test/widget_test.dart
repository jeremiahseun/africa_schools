// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('To test if the dropdown shows and works well',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.byType(DropdownButton), findsNWidgets(2));
    expect(find.widgetWithText(DropdownButton, 'University of Ibadan'),
        findsNothing);

    await tester.tap(find.byType(DropdownButton));
    await tester.pumpAndSettle();

    expect(find.widgetWithText(DropdownMenuItem, 'College of Education'),
        findsOneWidget);
  });
}
