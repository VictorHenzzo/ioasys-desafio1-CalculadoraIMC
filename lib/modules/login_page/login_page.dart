import 'package:flutter/material.dart';
import 'package:ioasys_calculadora_imc/modules/shared/buttons/buttons.dart';
import 'package:ioasys_calculadora_imc/modules/shared/text_field_login/text_field_login.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_colors.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_fonts.dart';
import 'package:ioasys_calculadora_imc/modules/shared/themes/app_images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            Image.asset(AppImages.logoLogin),
            Text(
              'Seja bem vindo!',
              style: AppFonts.titleLogin,
            ),
            Text(
              'Calculadora IMC',
              style: AppFonts.subTitleLogin,
            ),
            const TextFieldLogin(
              text: 'usuário',
            ),
            const TextFieldLogin(
              text: 'senha',
              hideText: true,
            ),
            Buttons(
              onPressed: () {
                debugPrint('Hit me!');
              },
              text: 'ENTRAR',
              color: AppColors.leading,
            )
          ],
        ),
      ),
    );
  }
}
