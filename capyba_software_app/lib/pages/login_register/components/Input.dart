import 'package:capyba_software_app/main.dart';
import 'package:flutter/material.dart';

class InputLoginRegister extends StatefulWidget {
  const InputLoginRegister({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    });

  final String labelText;
  final String hintText;
  final TextEditingController controller;

  @override
  State<InputLoginRegister> createState() => _InpurLoginRegisterState();
}

class _InpurLoginRegisterState extends State<InputLoginRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Label titulo
          Padding(padding: const EdgeInsets.only(left: 20, right: 20, top:10, bottom: 0), child: Text(widget.labelText, style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),),
          //Input
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: AppColors.black, fontSize: 16, fontWeight: FontWeight.bold),
              hintText: widget.hintText,
              filled: true,
              fillColor: Colors.transparent,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
            ),
          ),
        ],
      ),
    );
  }
}