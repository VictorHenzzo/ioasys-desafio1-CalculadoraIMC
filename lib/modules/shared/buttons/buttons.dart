import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';

class Buttons extends StatelessWidget {
  const Buttons(
      {Key? key, required this.onPressed, required this.text, required color})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.leading,
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
