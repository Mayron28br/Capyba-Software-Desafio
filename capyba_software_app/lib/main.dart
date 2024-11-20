import 'package:capyba_software_app/pages/login_register/login.dart';
import 'package:capyba_software_app/pages/login_register/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
      Widget build(BuildContext context) {
      return MaterialApp(
        home: LoginPage(),
        routes: {
          '/login': (context) => LoginPage(),
          '/register': (context) => const RegisterPage(),
        },
      );
    }
  }

class AppColors {
  static const Color red = Color(0xFFFC3C44);
  static const Color hotPink = Color(0xFFF94C57);
  static const Color lightGray = Color(0xFFC2CAD7);
  static const Color whiteSmoke = Color(0xFF121212);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
}