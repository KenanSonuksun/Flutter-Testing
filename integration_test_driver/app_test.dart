import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_project/main.dart' as app;

void main() {
  group("App Test", () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("full app test", (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final emailText = find.byKey(ValueKey("email"));
      final passwordText = find.byKey(ValueKey("password"));
      final loginButton = find.byKey(ValueKey("loginButton"));

      await tester.enterText(emailText, "email@gmail.com");
      await tester.enterText(passwordText, "123456");
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      final addButton1 = find.byKey(ValueKey("button1"));
      final addButton2 = find.byKey(ValueKey("button2"));
      final addButton3 = find.byKey(ValueKey("button3"));

      await tester.tap(addButton1);
      await tester.tap(addButton2);
      await tester.tap(addButton3);
      await tester.pumpAndSettle();

      final goBasket = find.byKey(ValueKey("goBasket"));

      await tester.tap(goBasket);
      await tester.pumpAndSettle();

      final discountText = find.byKey(ValueKey("discountCode"));
      final useDiscount = find.byKey(ValueKey("useDiscount"));

      await tester.enterText(discountText, "1234");
      await tester.tap(useDiscount);
      await tester.pumpAndSettle();

      final submitButton = find.byKey(ValueKey("submitButton"));

      await tester.tap(submitButton);
      await tester.pumpAndSettle();
    });
  });
}
