import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({Key? key, required this.text, this.hideText = false})
      : super(key: key);
  final String text;
  final bool hideText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: AppFonts.hintTexts,
            filled: true,
            fillColor: AppColors.background,
            contentPadding: const EdgeInsets.fromLTRB(25, 0, 20, 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppColors.background),
            )),
        obscureText: hideText,
      ),
    );
  }
}
