import 'package:capyba_software_app/main.dart';
import 'package:capyba_software_app/pages/home/home.dart';
import 'package:capyba_software_app/pages/login_register/components/input.dart';
import 'package:capyba_software_app/pages/login_register/components/button.dart';
import 'package:capyba_software_app/pages/login_register/components/linkPages.dart';
import 'package:capyba_software_app/pages/login_register/components/title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function() onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void singnUserUp() async {
    showDialog(
      context: context, 
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );

    //Registo do usuário
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, 
          password: passwordController.text,
        );
      } else {
        showErrorMensage('As senhas não são iguais');
      }
      Navigator.pop(context);
      
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMensage(e.code);
    }
  }

  void showErrorMensage(String message) {
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.whiteSmoke,
          title: Center(
            child: Text(message, style: const TextStyle(color: AppColors.white, fontSize: 24,),),
          ),
        );
      },
    );
  }
  
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
                  children: [
                    InputLoginRegister(labelText: 'Email', hintText: 'Digite seu email', controller: emailController,),
                    const SizedBox(height: 20),
                    InputLoginRegister(labelText: 'Senha', hintText: 'Digite sua senha', controller: passwordController,),
                    const SizedBox(height: 20),
                    InputLoginRegister(labelText: 'Confirme sua senha', hintText: 'Digite sua senha novamente', controller: confirmPasswordController,),
                    const SizedBox(height: 20),
                    ButtonEnter(nameButton: 'Registrar', onpPressed: singnUserUp),
                    const Spacer(),
                    Linkpages(text: 'Já é cadastrado?', link: 'Entre', onTap: widget.onTap),

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