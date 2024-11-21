import 'package:capyba_software_app/main.dart';
import 'package:flutter/material.dart';

class Linkpages extends StatelessWidget {
  Linkpages({
  super.key,
  required this.text,
  required this.link,
  required this.onTap,
  });

  final String text;
  final String link;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(text, style: const TextStyle(color: AppColors.white, fontSize: 18),),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: onTap,
            child: Text(link, style: const TextStyle(color: AppColors.hotPink, fontSize: 18),),
          )
        ],
      ),
    );
  }
}