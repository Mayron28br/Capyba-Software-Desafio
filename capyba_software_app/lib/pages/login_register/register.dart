import 'package:capyba_software_app/main.dart';
import 'package:capyba_software_app/pages/login_register/components/input.dart';
import 'package:capyba_software_app/pages/login_register/components/button.dart';
import 'package:capyba_software_app/pages/login_register/components/linkPages.dart';
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
              width: double.infinity,
              height: screenHeight / 5,
              child: const TitlePage(title: 'Register',),
            ),
          ),

          Positioned(
            top: screenHeight / 6,
            left: 0,
            right: 0,
            height: screenHeight * 5 / 6,
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
                  children: [/*
                    const InputLoginRegister(labelText: 'Nome', hintText: 'Digite seu nome'),
                    const SizedBox(height: 20),
                    const InputLoginRegister(labelText: 'Sobrenome', hintText: 'Digite seu sobrenome'),
                    const SizedBox(height: 20),
                    const InputLoginRegister(labelText: 'Email', hintText: 'Digite seu email'),
                    const SizedBox(height: 20),
                    const InputLoginRegister(labelText: 'Senha', hintText: 'Digite sua senha'),
                    const SizedBox(height: 20),
                    ButtonEnter(nameButton: 'Registrar',),*/
                    const Spacer(),
                    Linkpages(text: 'Já é cadastrado?', link: 'Entre', route: '/login'),

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