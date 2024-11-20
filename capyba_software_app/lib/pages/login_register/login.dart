import 'package:capyba_software_app/pages/login_register/components/input.dart';
import 'package:capyba_software_app/pages/login_register/components/title.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  static const Color red = Color(0xFFFC3C44);
  static const Color hotPink = Color(0xFFF94C57);
  static const Color lightGray = Color(0xFFC2CAD7);
  static const Color whiteSmoke = Color(0xFF121212);
  static const Color black = Color(0xFFFFFFFF);
  static const Color white = Color(0xFF000000);

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
            color: hotPink,
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
                color: whiteSmoke,
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
                    const TitlePage(title: 'Login', alignment: Alignment.center,),
                    //Email input
                    const InputLoginRegister(labelText: 'Email', hintText: 'Digite seu email'),
                    const SizedBox(height: 20),
                    //Password input
                    const InputLoginRegister(labelText: 'Password', hintText: 'Digite sua senha'),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot your password?', style: TextStyle(color: black, fontSize: 16)),
                      ],
                    ),
                    const SizedBox(height: 40),
                    
                    Container(
                      width: double.infinity,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ElevatedButton(
                        onPressed: _handleLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: hotPink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text('Entrar', style: TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                    const Spacer(),
                    //Cadastre-se button
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 65,
                      decoration:
                      BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não é cadastrado?', style: TextStyle(color: black, fontSize: 18),),
                          TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.only(left: 5),
                          ),
                          onPressed: () => Navigator.pushNamed(context, '/register'), 
                          child: const Text('Cadastre-se', style: TextStyle(color: hotPink, fontSize: 18, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ); 
  }
  void _handleLogin() {
    print('Login');
  }
}
