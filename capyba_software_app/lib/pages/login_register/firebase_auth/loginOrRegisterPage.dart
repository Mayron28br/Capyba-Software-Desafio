import 'package:capyba_software_app/pages/login_register/login.dart';
import 'package:capyba_software_app/pages/login_register/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {

  bool ShowLoginPage = true;

  void togglePages() {
    setState(() => ShowLoginPage = !ShowLoginPage);
  }


  @override
  Widget build(BuildContext context) {
    if (ShowLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}