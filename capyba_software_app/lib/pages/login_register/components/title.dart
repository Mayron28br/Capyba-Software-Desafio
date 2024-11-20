import 'package:capyba_software_app/main.dart';
import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container (
      alignment: Alignment.center,
      child: Padding (
        padding: const EdgeInsets.only(top: 30, bottom: 30),
        child: Text(title, style: const TextStyle(color: AppColors.white, fontSize: 34, fontWeight: FontWeight.bold)),
      ),
    );
  }
}