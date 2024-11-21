import 'package:capyba_software_app/pages/login_register/firebase_auth/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:capyba_software_app/pages/login_register/login.dart';
import 'package:capyba_software_app/pages/login_register/register.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
      Widget build(BuildContext context) {
      return const MaterialApp(
        home: AuthPage(),
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