import 'package:capyba_software_app/main.dart';
import 'package:flutter/material.dart';

class ButtonEnter extends StatefulWidget {
    ButtonEnter({
    super.key,
    required this.nameButton,
    });

  final String nameButton;

  @override
  State<ButtonEnter> createState() => _ButtonEnterState();
}

class _ButtonEnterState extends State<ButtonEnter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        onPressed: _handleLogin,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.hotPink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(widget.nameButton, style: const TextStyle(color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
  void _handleLogin() {
    print('Login');
  }
}