import 'package:capyba_software_app/main.dart';
import 'package:capyba_software_app/pages/login_register/components/title.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: screenHeight,
            color: AppColors.hotPink,
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              width: double.infinity,
              height: screenHeight / 4,
              child: const TitlePage(title: 'Register', alignment: Alignment.centerLeft),
            ),
          ),
        ],
      ),
    );
  }
}