import 'package:coligo_test/main.dart';
import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  if (binding is LiveTestWidgetsFlutterBinding) {
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
  }

  Future<void> addDelay(int ms) async {
    await Future<void>.delayed(Duration(milliseconds: ms));
  }

//
  Future<void> login(WidgetTester tester) async {
    await addDelay(2000);

    await tester.tap(find.byKey(
      const ValueKey('Login'),
    ));

    await addDelay(2000);
    tester.printToConsole('Dashboard screen opens');
    await tester.pumpAndSettle();
  }

  //
  Future<void> logout(WidgetTester tester) async {
    await addDelay(2000);

    await tester.tap(find.byKey(
      const ValueKey('Log Out'),
    ));

    await addDelay(2000);
    tester.printToConsole('Home screen opens');
    await tester.pumpAndSettle();
  }

  // Future<void> setWindow(
  //   WidgetTester tester,
  //   double width,
  //   double height,
  // ) async {
  //   tester.binding.window.physicalSizeTestValue = Size(width, height);
  //   await tester.pumpAndSettle();
  // }

//
  group('end-to-end test', () {
    testWidgets('Login Testing', (WidgetTester tester) async {
      await tester.pumpWidget(const Coligo());
      tester.printToConsole('Home screen opens');
      await tester.pumpAndSettle();
      await login(tester);

      tester.printToConsole('Dashboard screen opens');
      await tester.pumpAndSettle();
      await addDelay(8000);

      expect(find.text('Coligo'), findsOneWidget);
      await logout(tester);
    });
  });
}
