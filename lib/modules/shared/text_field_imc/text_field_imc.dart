import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';

class TextFieldIMC extends StatelessWidget {
  const TextFieldIMC({Key? key, required this.controller, required this.label})
      : super(key: key);
  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: AppFonts.hintTexts,
        ),
      ),
    );
  }
}
