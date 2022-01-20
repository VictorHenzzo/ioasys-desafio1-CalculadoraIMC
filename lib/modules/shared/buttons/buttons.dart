import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';

class Buttons extends StatelessWidget {
  const Buttons(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.color})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              text,
              style: AppFonts.buttonTexts,
            ),
          ),
        ),
      ),
    );
  }
}
