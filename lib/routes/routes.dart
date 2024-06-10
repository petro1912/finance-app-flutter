// routes.dart
import 'package:flutter/material.dart';
import 'package:finance_app/app.dart';
import 'package:finance_app/pages/login_screen.dart';
import 'package:finance_app/pages/signup_screen.dart';
import 'package:finance_app/pages/welcome_screen.dart';

Map<String, WidgetBuilder> get routes {
  return {
    '/': (context) => const WelcomeScreen(),
    '/login': (context) => const LoginScreen(),
    '/register': (context) => const SignUpScreen(),
  };
}

void navigateTo(String routeName) {
  BuildContext context = App.navigatorKey
                            .currentState!
                            .context;

  Navigator.pushNamed(context, routeName);
}