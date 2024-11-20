import 'package:capyba_software_app/main.dart';
import 'package:capyba_software_app/pages/login_register/components/button.dart';
import 'package:capyba_software_app/pages/login_register/components/input.dart';
import 'package:capyba_software_app/pages/login_register/components/linkPages.dart';
import 'package:capyba_software_app/pages/login_register/components/title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void singUserIn () async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
      );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

  return Scaffold(
      body: Stack(
        children: [
          // Apple Music Logo
          Container(
            width: double.infinity,
            height: screenHeight,
            color: AppColors.hotPink,
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/apple-music-logo.png',
              fit: BoxFit.contain,
              width: double.infinity,
              height: screenHeight / 3,
            ),
          ),
          // Login Form
          Positioned(
            top: screenHeight / 4,
            left: 0,
            right: 0,
            height: screenHeight * 3 / 4,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.whiteSmoke,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    const TitlePage(title: 'Login',),
                    //Email input
                    InputLoginRegister(labelText: 'Email', hintText: 'Digite seu email', controller: emailController,),
                    const SizedBox(height: 20),
                    //Password input
                    InputLoginRegister(labelText: 'Password', hintText: 'Digite sua senha', controller: passwordController,),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot your password?', style: TextStyle(color: AppColors.white, fontSize: 16)),
                      ],
                    ),
                    const SizedBox(height: 40),
                    //Entrar button
                    ButtonEnter(nameButton: 'Entrar'),
                    
                    const Spacer(),
                    //Cadastre-se button
                    Linkpages(text: 'Não é cadastrado?', link: 'Cadastre-se', route: '/register'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ); 
  }
}
