import 'package:capyba_software_app/pages/home/home.dart';
import 'package:capyba_software_app/pages/login_register/firebase_auth/loginOrRegisterPage.dart';
import 'package:capyba_software_app/pages/login_register/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          debugPrint('Snapshot connection state: ${snapshot.connectionState}');
          debugPrint('snapshot: $snapshot');
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}