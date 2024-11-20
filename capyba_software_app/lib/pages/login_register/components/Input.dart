import 'package:flutter/material.dart';

class InputLoginRegister extends StatefulWidget {
  const InputLoginRegister({
    super.key,
    required this.labelText,
    required this.hintText,
    });

  final String labelText;
  final String hintText;

  static const Color red = Color(0xFFFC3C44);
  static const Color hotPink = Color(0xFFF94C57);
  static const Color lightGray = Color(0xFFC2CAD7);
  static const Color whiteSmoke = Color(0xFFF5F5F5);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  @override
  State<InputLoginRegister> createState() => _InpurLoginRegisterState();
}

class _InpurLoginRegisterState extends State<InputLoginRegister> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        hintText: widget.hintText,
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      ),
    );
  }
}