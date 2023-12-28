import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:masteringlayoutandtamingthewidgettree52proportionalspacingwiththeflexibleandexpandedwidgets_customshapedrawingwithcustompaint/main.dart';

void main() {
  testWidgets('Custom Shape Drawing Test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify CustomPaint is used
    expect(
        find.descendant(
            of: find.byType(SizedBox), matching: find.byType(CustomPaint)),
        findsOneWidget);

    // Test for the initial color of the shape
    final CustomPaint customPaint = tester.widget(find.descendant(
        of: find.byType(SizedBox), matching: find.byType(CustomPaint)));
    final TrianglePainter painter = customPaint.painter as TrianglePainter;
    expect(painter.color, Colors.green);

    // Interact with UI to change color and test the updated color
    // This part of the test depends on how the color change is implemented (e.g., tapping a button)
    // For example:
    // await tester.tap(find.byIcon(Icons.color_change)); // Replace with your actual UI interaction
    // await tester.pump();
    // expect(painter.color, Colors.newColor); // Replace 'newColor' with the expected new color
  });
}
