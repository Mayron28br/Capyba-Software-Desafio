import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final Color red = Color(0xFFFC3C44);
  final Color hotPink = Color(0xFFF94C57);
  final Color lightGray = Color(0xFFC2CAD7);
  final Color black = Color(0xFF000000);
  final Color white = Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // Apple Music Logo
        Container(
          width: double.infinity,
          height: screenHeight / 3,
          color: hotPink,
          child: Image.asset(
            'assets/images/apple-music-logo.png',
            fit: BoxFit.contain,
          ),
        ),

          // Login Form
        Positioned(
          top: screenHeight / 4,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Sing In', style: TextStyle(color: black, fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
