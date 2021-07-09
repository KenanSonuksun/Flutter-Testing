import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_project/LoginPage/loginPage.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
    ));

    final emailText = find.byKey(ValueKey("email"));
    expect(emailText, findsOneWidget);

    final passwordText = find.byKey(ValueKey("password"));
    expect(passwordText, findsOneWidget);

    final loginButton = find.byKey(ValueKey("loginButton"));
    expect(loginButton, findsOneWidget);

    final loginImage = find.byKey(ValueKey("loginImage"));
    expect(loginImage, findsOneWidget);

    await tester.pumpAndSettle();
  });
}
